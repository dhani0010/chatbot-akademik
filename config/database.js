const mysql = require('mysql2');
const fs = require('fs');

const db = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: process.env.DB_PORT || 3306,

    ssl: {
        ca: fs.readFileSync(
            process.env.DB_SSL_CA,
            'utf8'
        )
    },

    waitForConnections: true,
    connectionLimit: 5,
    queueLimit: 0
});

db.getConnection((err, connection) => {
    if (err) {
        console.error('Database connection failed:', err);
        return;
    }

    console.log('Database Connected');

    connection.release();
});

module.exports = db;