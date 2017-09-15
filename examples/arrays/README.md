# Arrays
The CoffeeScript literals for objects and arrays look very similar to their JavaScript cousins. When each property is 
listed on its own line, the commas are optional.

```coffeescript
array = ["one", "two", "three"]
arrayInt = [1, 2, 3]
```

```coffeescript
array = {val1: "value1", val2: "value2"}
```

```coffeescript
bitlist = [
  1, 0, 1
  0, 0, 1
  1, 1, 0
]
```

## Running the script
```shell
$ coffee arrays.coffee

{ name: 'Dad', height: 5.6, age: 34 }
{ name: 'Mom', height: 5.5, age: 34 }
{ name: 'Brother', height: 4.4, age: 11 }
{ name: 'Sister', height: 3, age: 7 }
Names: Dad,Mom,Brother,Sister
Heights: 5.6,5.5,4.4,3
Ages: 34,34,11,7
[ { name: 'Dad', height: 5.6, age: 34 },
  { name: 'Mom', height: 5.5, age: 34 },
  { name: 'Brother', height: 4.4, age: 11 },
  { name: 'Sister', height: 3, age: 7 } ]
```