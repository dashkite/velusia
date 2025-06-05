import Channel from "@dashkite/reactive/channel"

connect = ( reactor ) ->

  channel = Channel.make()
  channel.source await @show()

  do =>
    for await event from reactor
      channel.send event

  channel
  
export { connect }