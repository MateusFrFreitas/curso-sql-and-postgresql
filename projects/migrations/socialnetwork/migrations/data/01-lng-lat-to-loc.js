require("dotenv").config();

const pg = require("pg");

const pool = new pg.Pool({
  host: process.env.DBHOST,
  port: process.env.DBPORT,
  database: process.env.DATABASE,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
});

pool
  .query(
    `
  UPDATE posts
  SET loc = POINT(lng, lat)
  WHERE loc IS NULL;
`
  )
  .then(() => {
    console.log("Update completed");
    pool.end;
  })
  .catch((err) => console.log(err.message));