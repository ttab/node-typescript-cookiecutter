import amqp from 'amqp-as-promised';
import confer from 'confer';
import leget = require('leget-heartbeat')

(async function main() {

  // resolve application configuration
  let conf = await confer.resolve('amqp')

  // create an amqp connection
  let amqpc = await amqp(conf.amqp)

  // start sending heartbeats
  leget.sendHeartbeat(amqpc)

  console.log("Hello from {{cookiecutter.project_name}}");
})();
