const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(
        'SELECT * FROM dokumen ORDER BY id DESC',
        callback
    );

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO dokumen SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM dokumen WHERE id=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE dokumen SET ? WHERE id=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM dokumen WHERE id=?',
        [id],
        callback
    );

};