const pg = require("pg");

class Pool {
  _pool = null;
  
  connect(options) {
    this._pool = new pg.Pool(options);
    return this._pool.query("SELECT true;");
  }

  close() {
    return this._pool.end();
  }

  // REALLY BIG SECURITY ISSUE HERE!
  query(sql, params) {
    return this._pool.query(sql, params);
  }
}

module.exports = new Pool();
