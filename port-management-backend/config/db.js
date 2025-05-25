const { Pool } = require('pg');
require('dotenv').config();

const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
});

async function waitForDB() {
  for (let i = 0; i < 10; i++) {
    try {
      await pool.query('SELECT 1');
      console.log('✅ PostgreSQL bağlantısı kuruldu');
      break;
    } catch (err) {
      console.log(`❌ Bağlantı denemesi ${i + 1} başarısız, tekrar deneniyor...`);
      await new Promise(res => setTimeout(res, 2000));
    }
  }
}

waitForDB();

module.exports = pool;
