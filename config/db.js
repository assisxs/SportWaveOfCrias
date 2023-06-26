const mysql = require("mysql2/promise");

const pool = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "",
    port: 3308,
    database: "sportwavedb",
});

module.exports = pool;