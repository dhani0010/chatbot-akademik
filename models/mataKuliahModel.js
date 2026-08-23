const db = require('../config/database');

exports.getAll = (callback)=>{

    db.query(
        'SELECT * FROM mata_kuliah',
        callback
    );

};

exports.insert = (data,callback)=>{

    db.query(
        'INSERT INTO mata_kuliah SET ?',
        data,
        callback
    );

};

exports.findById = (id,callback)=>{

    db.query(
        'SELECT * FROM mata_kuliah WHERE id_mk=?',
        [id],
        callback
    );

};

exports.update = (id,data,callback)=>{

    db.query(
        'UPDATE mata_kuliah SET ? WHERE id_mk=?',
        [data,id],
        callback
    );

};

exports.delete = (id,callback)=>{

    db.query(
        'DELETE FROM mata_kuliah WHERE id_mk=?',
        [id],
        callback
    );

};