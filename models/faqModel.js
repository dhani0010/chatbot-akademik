const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(
        'SELECT * FROM faq ORDER BY id DESC',
        callback
    );

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO faq SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM faq WHERE id=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE faq SET ? WHERE id=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM faq WHERE id=?',
        [id],
        callback
    );

};