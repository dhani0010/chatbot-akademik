const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(`
        SELECT
            j.*,
            mk.nama_mk,
            mk.kode_mk,
            d.nama AS nama_dosen
        FROM jadwal j
        LEFT JOIN mata_kuliah mk
            ON j.id_mk = mk.id_mk
        LEFT JOIN dosen d
            ON j.id_dosen = d.id_dosen
    `, callback);

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO jadwal SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM jadwal WHERE id_jadwal=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE jadwal SET ? WHERE id_jadwal=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM jadwal WHERE id_jadwal=?',
        [id],
        callback
    );

};