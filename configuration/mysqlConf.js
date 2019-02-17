/*
Permet de faire par exemple dans le projet un simple
const connSql = require('./configuration/mysqlConf');
puis connSql.query("SELECT * ...
 */

var mysql = require('promise-mysql');
const connection = mysql.createConnection({
    host     : 'mysql-miguel.alwaysdata.net',
    user     : 'miguel',
    password : "Miguel93500",
    database : 'miguel_hotel'
})

module.exports = connection;
