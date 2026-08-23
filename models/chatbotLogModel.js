const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(
        `SELECT * FROM chatbot_log
         ORDER BY waktu DESC`,
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM chatbot_log WHERE id=?',
        [id],
        callback
    );

};