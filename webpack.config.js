const path = require('path');
// TODO: 这个库是干什么的 minimist
const args = require('minimist')(process.argv.slice(2));
// TODO: WEBPACK_ENV NODE_ENV区别
const env = args.env || process.env.WEBPACK_ENV || 'dev';

process.env.WEBPACK_ENV = env;
// TODO: 路径?
module.exports = require('./config/webpack/' + env);
