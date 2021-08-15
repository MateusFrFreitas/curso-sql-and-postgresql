require("dotenv").config();

const app = require("./src/app");
const pool = require("./src/pool");

pool
  .connect({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    database: process.env.DATABASE,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
  })
  .then(() => {
    app().listen(process.env.PORT, () => {
      console.log(`Listening on port ${process.env.PORT}`);
    });
  })
  .catch(console.error);
