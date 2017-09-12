family = [
  {
    name: "Dad"
    height: 5.6
    age: 34
  }
  {
    name: "Mom"
    height: 5.5
    age: 34
  }
  {
    name: "Brother"
    height: 4.4
    age: 11
  }
  {
    name: "Sister"
    height: 3.0
    age: 7
  }
]

names = []
heights = []
ages = []

for mem in family
  names.push mem.name
  heights.push mem.height
  ages.push mem.age
  console.log mem

console.log "Names: #{names}"
console.log "Heights: #{heights}"
console.log "Ages: #{ages}"

console.log family