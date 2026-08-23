const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(`
        SELECT
            s.*,
            m.nama AS nama_mahasiswa,
            d.nama AS nama_pembimbing
        FROM skripsi s
        LEFT JOIN mahasiswa m
            ON s.id_mahasiswa = m.id_mahasiswa
        LEFT JOIN dosen d
            ON s.pembimbing = d.id_dosen
        ORDER BY s.id_skripsi DESC
    `, callback);

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO skripsi SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM skripsi WHERE id_skripsi=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE skripsi SET ? WHERE id_skripsi=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM skripsi WHERE id_skripsi=?',
        [id],
        callback
    );

};