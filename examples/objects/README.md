# Objects
The CoffeeScript literals for objects and arrays look very similar to their JavaScript cousins. When each property is 
listed on its own line, the commas are optional.

```coffeescript
family =
  dad:
    name: "Dad"
    height: 5.6
    age: 34
  mom:
    name: "Mom"
    height: 5.5
    age: 34
  brother:
    name: "Brother"
    height: 4.4
    age: 11
  sister:
    name: "Sister"
    height: 3.0
    age: 7
```

In JavaScript, you can’t use reserved words, like `class`, as properties of an object, without quoting them as strings. 
CoffeeScript notices reserved words used as keys in objects and quotes them for you, so you don’t have to worry about it 
(say, when using jQuery).
```coffeescript
$('.account').attr class: 'active'

log object.class
```

CoffeeScript has a shortcut for creating objects when you want the key to be set with a variable of the same name.
```coffeescript
name = "Michelangelo"
mask = "orange"
weapon = "nunchuks"
turtle = {name, mask, weapon}
output = "#{turtle.name} wears an #{turtle.mask} mask. Watch out for his #{turtle.weapon}!"
```