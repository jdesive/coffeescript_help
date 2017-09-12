displayLeaders = (first, second, others...) ->
  console.log "1st: #{first}\n2nd: #{second}\nOther: [#{others}]"

roster = [
  "jdesive"
  "ddesive"
  "adesive"
  "hdesive"
  "zdesive"
]

# Reorder to put players in winning order(if mimicking game)

displayLeaders roster...

