# Splats...
The JavaScript **arguments object** is a useful way to work with functions that accept variable numbers of arguments. 
CoffeeScript provides splats `...`, both for function definition as well as invocation, making variable numbers of 
arguments a little bit more palatable.

Lets say you have a list of team players:
```coffeescript
team = [
  "jdesive"
  "ddesive"
  "adesive"
  "hdesive"
  "zdesive"
]
```

You want to display the first and second players in the list:
```coffeescript
displayMembers = (first, second, others...) ->
  console.log "1st: #{first}\n2nd: #{second}]"
```

Now lets bring it all together:
```coffeescript
displayMembers = (first, second, others...) ->
  console.log "1st: #{first}\n2nd: #{second}]"

team = [
  "jdesive"
  "ddesive"
  "adesive"
  "hdesive"
  "zdesive"
]

displayMembers team...
```

## Running the script
```shell
$ coffee splat.coffee

1st: jdesive
2nd: ddesive
Other: [adesive,hdesive,zdesive]
```