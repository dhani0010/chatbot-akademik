const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(
        'SELECT * FROM dosen',
        callback
    );

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO dosen SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM dosen WHERE id_dosen=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE dosen SET ? WHERE id_dosen=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM dosen WHERE id_dosen=?',
        [id],
        callback
    );

};