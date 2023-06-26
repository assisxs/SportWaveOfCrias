const express = require("express");
const router = express.Router();
const multer = require("multer");
const pool = require("../config/db");

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "uploads/");
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname);
  },
});

const upload = multer({ storage: storage });

// products create/new
router.get("/cadastrar", async (req, res, next) => {
  res.render("products/create", { error: null, formData: {} });
});

// products store/save
router.post("/cadastrar", upload.single("cover"), async (req, res, next) => {
  try {
    const { name, price, sport, category } = req.body;
    const cover = req.file.filename;

    const sql = `INSERT INTO product (name, price, cover, sport, category) VALUES (?, ?, ?, ?, ?)`;
    const values = [name, price, cover, sport, category];
    await pool.query(sql, values);

    res.redirect(`/`);
  } catch (err) {
    console.error(err);
    next(new Error("Ocorreu um erro ao cadastrar o produto."));
  }
});

module.exports = router;
