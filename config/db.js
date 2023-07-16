const mysql = require("mysql2/promise");
//l
const pool = mysql.createPool({
    host: "localhost",
    user: "root", 
    password: "",
    database: "sportwavedb",
});

module.exports = pool; 