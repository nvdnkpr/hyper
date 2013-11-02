var Agent, Entry, Server;

Agent = require('agent');

Entry = require('entry');

Server = require('server');

module.exports = function(callback) {
  var agent, config, error, server;
  if (callback == null) {
    callback = function() {};
  }
  try {
    config = require("" + (process.cwd()) + "/config.coffee");
    server = new Server({
      config: config
    });
    server.boot();
    return typeof callback === "function" ? callback(null, server) : void 0;
  } catch (_error) {
    error = _error;
    agent = new Entry;
    return typeof callback === "function" ? callback(error, agent) : void 0;
  }
};
