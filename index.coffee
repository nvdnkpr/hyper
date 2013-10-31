Agent = require 'agent'
# Client = require 'client'
Entry = require 'entry'
Server = require 'server'

module.exports = (callback) ->
  
  try
    
    config = require "#{process.cwd()}/config.coffee"
    
    agent = new Server {config}
    
    callback null, agent
    
    # blessed = require 'blessed'
    
    # screen = blessed.screen()
    
    # box = blessed.box
    #   top: "center"
    #   left: "center"
    #   width: "50%"
    #   height: "50%"
    #   content: "Hello {bold}world{/bold}!"
    #   tags: true
    #   border:
    #     type: "line"
    #   style:
    #     fg: "white"
    #     bg: "magenta"
    #     border:
    #       fg: "#ffffff"
    #     hover:
    #       bg: "green"
    
    # screen.append box
    
    # box.on "click", (data) ->
    #   box.setContent "{center}Some different {red-fg}content{/red-fg}.{/center}"
    #   screen.render()
    
    # box.focus()
    # screen.render()
    
    # box.key "enter", (ch, key) ->
    #   box.setContent "{right}Even different {black-fg}content{/black-fg}.{/right}\n"
    #   box.setLine 1, "bar"
    #   box.insertLine 1, "foo"
    #   screen.render()
    
    # screen.key ["escape", "q", "C-c"], (ch, key) ->
    #   process.exit 0
  
  catch error
    
    agent = new Entry
    
    callback error, agent