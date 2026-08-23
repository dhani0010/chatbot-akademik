const db = require('../config/database');

exports.login = (username,password,callback)=>{

    const sql = `
    SELECT * FROM admin
    WHERE username=?
    AND password=?
    `;

    db.query(
        sql,
        [username,password],
        callback
    );

};