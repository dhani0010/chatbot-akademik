const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(
        'SELECT * FROM mahasiswa',
        callback
    );

};

exports.insert = (data,result)=>{

    db.query(
        "INSERT INTO mahasiswa SET ?",
        data,
        result
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM mahasiswa WHERE id_mahasiswa=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE mahasiswa SET ? WHERE id_mahasiswa=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM mahasiswa WHERE id_mahasiswa=?',
        [id],
        callback
    );

};