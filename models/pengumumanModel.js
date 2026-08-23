const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(
        'SELECT * FROM pengumuman',
        callback
    );

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO pengumuman SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM pengumuman WHERE id=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE pengumuman SET ? WHERE id=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM pengumuman WHERE id=?',
        [id],
        callback
    );

};