const xlsx = require("xlsx");
const fs = require("fs");
const pool = require("./config/db");

async function importInitialExcel(filePath) {
  const workbook = xlsx.readFile(filePath);
  const sheet = workbook.Sheets[workbook.SheetNames[0]];
  const rows = xlsx.utils.sheet_to_json(sheet);

  console.log(`📊 Excel dosyasından ${rows.length} satır okundu.`);
  console.log("✅ PostgreSQL bağlantısı kuruluyor...");

  await pool.query("DELETE FROM ports"); // Mevcut tüm verileri sil

  let insertedCount = 0;

  for (const row of rows) {
    const {
      port_number = null,
      project_name = null,
      application_name = null,
      description = null
    } = row;

    try {
      await pool.query(
        "INSERT INTO ports (port_number, project_name, application_name, description) VALUES ($1, $2, $3, $4)",
        [port_number || null, project_name || null, application_name || null, description || null]
      );
      insertedCount++;
    } catch (err) {
      console.warn("⚠️ Hata oluşan satır:", row, "\nHata:", err.message);
    }
  }

  console.log(`✅ Toplam ${insertedCount} satır başarıyla eklendi.`);
  process.exit();
}

// Komut satırından dosya yolu alınır
const file = process.argv[2];
if (!file) {
  console.error("❌ Lütfen bir .xlsx dosya yolu belirtin.");
  process.exit(1);
}

importInitialExcel(file);
