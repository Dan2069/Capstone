/** Database for Studio Ghibli */

const pg = require("pg");

const db = new pg.Client("postgresql:///studio_ghibli");

db.connect();

module.exports = db;
