const db = require('../config/database');

exports.index = (req,res)=>{

    const statistik = {};

    db.query(
        'SELECT COUNT(*) total FROM mahasiswa',
        (err,mhs)=>{

            statistik.mahasiswa =
            mhs[0].total;

            db.query(
                'SELECT COUNT(*) total FROM dosen',
                (err,dsn)=>{

                    statistik.dosen =
                    dsn[0].total;

                    db.query(
                        'SELECT COUNT(*) total FROM skripsi',
                        (err,skr)=>{

                            statistik.skripsi =
                            skr[0].total;

                            db.query(
                                'SELECT COUNT(*) total FROM seminar',
                                (err,sem)=>{

                                    statistik.seminar =
                                    sem[0].total;

                                    db.query(
                                        'SELECT COUNT(*) total FROM sidang',
                                        (err,sid)=>{

                                            statistik.sidang =
                                            sid[0].total;

                                            db.query(
                                                'SELECT COUNT(*) total FROM kerja_praktik',
                                                (err,kp)=>{

                                                    statistik.kp =
                                                    kp[0].total;

                                                    db.query(
                                                        'SELECT COUNT(*) total FROM kkn',
                                                        (err,kkn)=>{

                                                            statistik.kkn =
                                                            kkn[0].total;

                                                            db.query(
                                                                'SELECT COUNT(*) total FROM chatbot_log',
                                                                (err,log)=>{

                                                                    statistik.log =
                                                                    log[0].total;

                                                                    res.render(
                                                                        'dashboard',
                                                                        {
                                                                            statistik
                                                                        }
                                                                    );

                                                                }
                                                            );

                                                        }
                                                    );

                                                }
                                            );

                                        }
                                    );

                                }
                            );

                        }
                    );

                }
            );

        }
    );

};