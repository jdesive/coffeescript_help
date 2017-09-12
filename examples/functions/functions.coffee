# Functions

square = (val) ->
  val * val

cube = (val) ->
  square(val) * val

log = (prefix, message) ->
  console.log "#{prefix} #{message}"

doWork = (amt) ->
  log("INFO", "#{amt} squared is #{square amt}.")
  log("INFO", "#{amt} cubed is #{cube amt }.")

  both = (amt) ->
    cube square amt

  log("INFO", "#{both amt}")


# Startup

console.log "Loading variable"
amt = 9

console.log "Amount = #{amt}"

console.log "Doing work!"
doWork amt
