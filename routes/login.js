const express = require('express');
const router = express.Router();


router.get('/', (req, res) => {
    res.render('login', { layout: 'login-layout' });
  });
  

module.exports = router;
