const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(`
        SELECT
            n.*,
            m.nama
        FROM notifikasi n
        LEFT JOIN mahasiswa m
        ON n.id_mahasiswa = m.id_mahasiswa
        ORDER BY n.id DESC
    `, callback);

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO notifikasi SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM notifikasi WHERE id=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE notifikasi SET ? WHERE id=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM notifikasi WHERE id=?',
        [id],
        callback
    );

};