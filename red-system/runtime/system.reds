Red/System [
	Title:   "Red/System OS-independent runtime"
	Author:  "Nenad Rakocevic"
	File: 	 %system.reds
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/dockimbel/Red/blob/master/BSL-License.txt
	}
]

;-- FPU types returned by system/fpu/type
#define FPU_TYPE_X87	1					;-- Intel x87 unit
#define FPU_TYPE_SSE	2					;-- Intel SSE floating point unit
#define FPU_TYPE_VFP	3					;-- ARM Vector Floating Point unit

;-- FPU values for system/fpu/option/rounding
#define FPU_X87_ROUNDING_NEAREST	 0		;-- (even) rounded result is the closest to the infinitely precise result
#define FPU_X87_ROUNDING_DOWN		 1		;-- (toward -INF) rounded result is the closest to but no greater than the infinitely precise result
#define FPU_X87_ROUNDING_UP			 2		;-- (toward +INF) rounded result is the closest to but no less than the infinitely precise result
#define FPU_X87_ROUNDING_ZERO		 3		;-- (truncate) rounded result is the closest to but no greater in absolute value than the infinitely precise result

;-- FPU values for system/fpu/option/precision
#define FPU_X87_PRECISION_SINGLE	 0		;-- 32-bit float, 24-bit mantissa
#define FPU_X87_PRECISION_DOUBLE	 1		;-- 64-bit float, 53-bit mantissa
#define FPU_X87_PRECISION_DOUBLE_EXT 3		;-- 80-bit float, 64-bit mantissa

__stack!: alias struct! [
	top		[int-ptr!]
	frame	[int-ptr!]
	align	[int-ptr!]
]

#switch target [
	IA-32 [
		x87-mask!: alias struct! [			;-- x87 exception mask (true => disable exception)
			precision	[logic!]
			underflow	[logic!]
			overflow	[logic!]
			zero-divide [logic!]
			denormal	[logic!]
			invalid-op  [logic!]
		]
	
		x87-option!: alias struct! [
			rounding	[integer!]
			precision	[integer!]
		]
		
		__fpu-struct!: alias struct! [
			type		 [integer!]
			option		 [x87-option!]
			mask		 [x87-mask!]
			control-word [integer!]			;-- direct access to whole control word
			epsilon		 [integer!]			;-- Ulp threshold for almost-equal op (not used yet)
			update		 [integer!]			;-- action simulated using a read-only member
			init		 [integer!]			;-- action simulated using a read-only member
		]
	]
	ARM [
		__fpu-struct!: alias struct! [
			type		 [integer!]			;-- only type for now...
		]
	]
]

system: declare struct! [					;-- store runtime accessible system values
	args-count	[integer!]					;-- command-line arguments count (do not move member)
	args-list	[str-array!]				;-- command-line arguments array pointer (do not move member)
	env-vars 	[str-array!]				;-- environment variables array pointer (always null for Windows)
	stack		[__stack!]					;-- stack virtual access
	pc			[byte-ptr!]					;-- CPU program counter value
	;cpu		[__cpu-struct!]				;-- reserved for later use
	fpu			[__fpu-struct!]				;-- FPU settings
	alias		[integer!]					;-- aliases ID virtual access
	words		[integer!]					;-- global context accessor (dummy type)
	thrown		[integer!]					;-- last THROWn value
]

#if type = 'exe [
	#if target = 'IA-32 [
		system/fpu/control-word: 0322h		;-- default control word: division by zero, 
											;-- underflow and overflow raise exceptions.
		system/fpu/update
	]
]