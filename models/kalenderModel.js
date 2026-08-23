const db =
require('../config/database');

exports.getAll = (callback)=>{

    db.query(
        'SELECT * FROM kalender_akademik ORDER BY tanggal_mulai ASC',
        callback
    );

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO kalender_akademik SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM kalender_akademik WHERE id=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE kalender_akademik SET ? WHERE id=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM kalender_akademik WHERE id=?',
        [id],
        callback
    );

};