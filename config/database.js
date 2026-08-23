const mysql = require('mysql2/promise');

const db = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: process.env.DB_PORT || 3306
});

db.connect((err)=>{
    if(err){
        console.log(err);
    }else{
        console.log('Database Connected');
    }
});

module.exports = db;