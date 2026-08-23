const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(`
        SELECT
    j.*,
    m.nama AS nama_mahasiswa,
    d1.nama AS nama_pembimbing_1,
    d2.nama AS nama_pembimbing_2
FROM judul_skripsi j
LEFT JOIN mahasiswa m
    ON j.id_mahasiswa = m.id_mahasiswa
LEFT JOIN dosen d1
    ON j.dosen_pembimbing_1 = d1.id_dosen
LEFT JOIN dosen d2
    ON j.dosen_pembimbing_2 = d2.id_dosen
    `, callback);

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO judul_skripsi SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM judul_skripsi WHERE id_judul=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE judul_skripsi SET ? WHERE id_judul=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM judul_skripsi WHERE id_judul=?',
        [id],
        callback
    );

};