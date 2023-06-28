const express = require("express");
const router = express.Router();
const pool = require("../config/db");

router.get("/:id", async (req, res, next) => {
  try {
    const { id } = req.params;
    const sql = "SELECT * FROM product WHERE id = ?";
    const values = [id];
    const [rows] = await pool.query(sql, values);

    if (rows.length === 0) {
      next(createError(404));
    }
    res.render("products/descricao", { layout: "layouts/base", product: rows[0] });
  } catch (err) {
    console.error(err);
  }
});

module.exports = router;
