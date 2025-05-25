CREATE TABLE IF NOT EXISTS ports (
    id SERIAL PRIMARY KEY,
    port_number INTEGER NOT NULL,
    project_name TEXT,
    application_name TEXT,
    description TEXT
);

-- Eğer port zaten varsa tekrar ekleme
INSERT INTO ports (port_number, project_name, application_name, description)
SELECT 8080, 'Port Yönetimi', 'Frontend', 'Frontend server port'
WHERE NOT EXISTS (
    SELECT 1 FROM ports WHERE port_number = 8080
);

INSERT INTO ports (port_number, project_name, application_name, description)
SELECT 5432, 'Port Yönetimi', 'Veritabanı', 'Database default port'
WHERE NOT EXISTS (
    SELECT 1 FROM ports WHERE port_number = 5432
);

INSERT INTO ports (port_number, project_name, application_name, description)
SELECT 5050, 'Port Yönetimi', 'Backend API', 'Backend API port'
WHERE NOT EXISTS (
    SELECT 1 FROM ports WHERE port_number = 5050
);
