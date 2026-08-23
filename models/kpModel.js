const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(`
        SELECT
            kp.*,
            m.nama AS nama_mahasiswa,
            d.nama AS nama_dosen
        FROM kerja_praktik kp
        LEFT JOIN mahasiswa m
            ON kp.id_mahasiswa = m.id_mahasiswa
        LEFT JOIN dosen d
            ON kp.dosen_pembimbing = d.id_dosen
        ORDER BY kp.id_kp DESC
    `, callback);

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO kerja_praktik SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM kerja_praktik WHERE id_kp=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE kerja_praktik SET ? WHERE id_kp=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM kerja_praktik WHERE id_kp=?',
        [id],
        callback
    );

};