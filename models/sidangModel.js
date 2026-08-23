const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(`
        SELECT
            s.*,
            m.nama AS nama_mahasiswa,

            d1.nama AS pembimbing,

            d2.nama AS nama_penguji1,
            d3.nama AS nama_penguji2,
            d4.nama AS nama_penguji3

        FROM sidang s

        LEFT JOIN mahasiswa m
            ON s.id_mahasiswa = m.id_mahasiswa

        LEFT JOIN dosen d1
            ON s.pembimbing = d1.id_dosen

        LEFT JOIN dosen d2
            ON s.penguji_1 = d2.id_dosen

        LEFT JOIN dosen d3
            ON s.penguji_2 = d3.id_dosen

        LEFT JOIN dosen d4
            ON s.penguji_3 = d4.id_dosen

        ORDER BY s.id_sidang DESC
    `, callback);

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO sidang SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM sidang WHERE id_sidang=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE sidang SET ? WHERE id_sidang=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM sidang WHERE id_sidang=?',
        [id],
        callback
    );

};