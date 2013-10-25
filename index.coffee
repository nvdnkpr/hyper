Agent = require 'agent'
Server = require 'server'
# Client = require 'client'
Entry = require 'entry'

module.exports = (callback) ->
  
  try
    
    config = require "#{process.cwd()}/config.coffee"
    
    agent = new Server {config}
    
    callback null, agent
  
  catch error
    
    console.error error
    
    agent = new Entry
    
    callback null, agent