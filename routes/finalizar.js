const express = require('express');
const router = express.Router();



router.get('/', (req, res) => {
    res.render('finalizar', { layout: 'layouts/finalizar' });
  });
  

module.exports = router;
