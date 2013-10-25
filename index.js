var Agent, Entry, Server;

Agent = require('agent');

Server = require('server');

Entry = require('entry');

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
    console.error(error);
    agent = new Entry;
    return callback(null, agent);
  }
};
