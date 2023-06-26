var express = require("express");
var router = express.Router();
const createError = require("http-errors");
const pool = require("../config/db");

const categories = {
  acessorios: "Acessórios",
  roupas: "Roupas",
};

const sports = {
  surf: "Surf",
  "volei-de-praia": "Vôlei de Praia",
  "beach-tennis": "Beach Tennis",
};

router.get("/", async (req, res) => {
  try {
    const sql = `SELECT * FROM product WHERE featured = 1 ORDER BY createdAt DESC LIMIT 10;`;
    const [rows] = await pool.query(sql);

    res.render("products/index", { products: rows });
  } catch (err) {
    console.error(err);
    next(new Error("Ocorreu um erro inesperado."));
  }
});

router.get("/esporte/:param", async (req, res, next) => {
  try {
    const { param } = req.params;
    
    if (sports[param]) {
      const sql =
        "SELECT * FROM product WHERE sport = ? ORDER BY createdAt DESC LIMIT 10;";
      const values = [sports[param]];
      const [rows] = await pool.query(sql, values);

      res.render("products/sport.ejs", {
        title: sports[param],
        products: rows,
      });
    } else {
      next(createError(404));
    }
  } catch (err) {
    console.error(err);
    next(new Error("Ocorreu um erro inesperado."));
  }
});

router.get("/categoria/:param", async (req, res, next) => {
  try {
    const { param } = req.params;

    if (categories[param]) {
      const sql =
        "SELECT * FROM product WHERE category = ? ORDER BY createdAt DESC LIMIT 10;";
      const values = [categories[param]];
      const [rows] = await pool.query(sql, values);

      res.render("products/category.ejs", {
        title: categories[param],
        products: rows,
      });
    } else {
      next(createError(404));
    }
  } catch (err) {
    console.error(err);
    next(new Error("Ocorreu um erro inesperado."));
  }
});

module.exports = router;
