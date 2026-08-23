const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(`
        SELECT
            k.*,
            m.nama AS nama_mahasiswa,
            d.nama AS nama_dosen
        FROM kkn k
        LEFT JOIN mahasiswa m
            ON k.id_mahasiswa = m.id_mahasiswa
        LEFT JOIN dosen d
            ON k.dosen_pembimbing = d.id_dosen
        ORDER BY k.id_kkn DESC
    `, callback);

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO kkn SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM kkn WHERE id_kkn=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE kkn SET ? WHERE id_kkn=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM kkn WHERE id_kkn=?',
        [id],
        callback
    );

};