# Functions
Functions are defined by an optional list of parameters in parentheses, an arrow, and the function body. 
```coffeescript
functionName = (param1, param2, param3) ->
  val = param1 + param2
  param3 * val
  
emptyFunction = ->

noParameters = ->
  functionName 1 2 5
```
The Empty function looks like this:
```coffeescript
functionName = (param1, param2, param3) ->

```
Functions may also have default values for arguments, which will be used if the incoming argument is missing (`null` or `undefined`).
```coffeescript
functionName = (param1, param2 = 4, param3 = 5) ->
  val = param1 + param2
  param3 * val
```

----

Functions can also be defined inside other functions:
```coffeescript
function1 = ->
  console.log "function 1"
  
  function2 = (val) ->
    console.log "function #{val}"
    
  function2 2
```