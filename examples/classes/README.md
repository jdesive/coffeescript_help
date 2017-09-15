# Classes
CoffeeScript classes are handled in the same manner as most languages. You define a class like the following:
```coffeescript
class ClassName

  @functionOne = (param) ->
    console.log param

module.exports = ClassName
```

You can use the class from another script using `require`.
```coffeescript
ClassName = require './path/to/script'

ClassName.functionOne("Hello")
``` 

## Running the script
```shell
$ coffee classes.coffee

Hello from the main class.
Hello from the other class.
```