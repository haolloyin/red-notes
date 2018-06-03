Red [
	Title:   "Red conditonal test script"
	Author:  "Nenad Rakocevic & Peter W A Wood"
	File: 	 %conditional-test.reds
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic & Peter W A Wood. All rights reserved."
	License: "BSD-3 - https://github.com/dockimbel/Red/blob/origin/BSD-3-License.txt"
]

#include  %../../../../quick-test/quick-test.red

~~~start-file~~~ "conditional"

===start-group=== "converted Red/System tests"

  --test-- "nested ifs inside a function with many return points"
    niff: func [
      i       [integer!]
      return: [integer!]
    ][
      if i > 127 [
        if 192 = i [return i]
        if 193 = i [return i]
        if 244 < i [return i]
        if i < 224 [
          if i = 208 [return i]
        ]
      ]
      return -1
    ]
  --assert 208 = niff 208
  --assert -1 = niff 1
  --assert -1 = niff 224
  
  --test-- "simple if"
    i: 0
    if true [i: 1]
  --assert i = 1
  
  --test-- "nested if"
    i: 0
    if true [
      if true [
        i: 1
      ]
    ]
  --assert i = 1
  
  --test-- "double nested if"
    i: 0
    if true [
      if true [
        if true [
          i: 1
        ]
      ]
    ]
  --assert i = 1
  
  --test-- "triple nested if"
    i: 0
    if true [
      if true [
        if true [
          if true [
            i: 1
          ]
        ]
      ]
    ]
  --assert i = 1
    
  --test-- "either basic 1"
  --assert 1 = either true [1] [2]
  
  --test-- "either basic 2"
  --assert 2 = either false [1] [2]
  
  --test-- "either basic 3"
  --assert 1 = either 42 [1] [2]

===end-group===

===start-group=== "basic if tests"

  --test-- "bif-1"
  --assert none = if false [1]     ;; # Issue 321

===end-group===
    
~~~end-file~~~

