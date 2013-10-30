var Agent, Entry, Server;

Agent = require('agent');

Entry = require('entry');

Server = require('server');

module.exports = function(callback) {
  var agent, config, error;
  try {
    config = require("" + (process.cwd()) + "/config.coffee");
    agent = new Server({
      config: config
    });
    return callback(null, agent);
  } catch (_error) {
    error = _error;
    agent = new Entry;
    return callback(error, agent);
  }
};
