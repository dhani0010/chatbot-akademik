const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(`
    SELECT
        s.*,
        m.nama AS nama_mahasiswa,
        d1.nama AS nama_pembimbing,
        d2.nama AS nama_penguji_1,
        d3.nama AS nama_penguji_2
    FROM seminar s
    LEFT JOIN mahasiswa m
        ON s.id_mahasiswa = m.id_mahasiswa
    LEFT JOIN dosen d1
        ON s.pembimbing = d1.id_dosen
    LEFT JOIN dosen d2
        ON s.penguji_1 = d2.id_dosen
    LEFT JOIN dosen d3
        ON s.penguji_2 = d3.id_dosen
    ORDER BY s.id DESC
`, callback);

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO seminar SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM seminar WHERE id=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE seminar SET ? WHERE id=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM seminar WHERE id=?',
        [id],
        callback
    );

};