const express = require('express');
const router = express.Router();
const pool = require("../config/db");



router.get('/login', (req, res) => {
    res.render('login', { layout: 'layouts/login-layout' });
  });

  
  router.post('/login', async(req, res, next) => {
    console.log('oii');
    
    try {
        const {logemail, logpass} = req.body;
        const sql = `SELECT * FROM user WHERE email =?`;
        const values = [logemail];
        const [rows] = await pool.query(sql, values);

        if (rows.length === 0) {
            return res.redirect("/login");
        }
        if(logpass === rows[0].password){
            req.session.user = rows[0];
            return res.redirect("/");
        }

        return res.redirect("/login");
      } catch (err) {
        console.error(err);
        next(new Error("Ocorreu um erro inesperado."));
      }
  });

module.exports = router;
