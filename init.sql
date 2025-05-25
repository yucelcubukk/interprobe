-- init.sql
CREATE TABLE IF NOT EXISTS ports (
  id SERIAL PRIMARY KEY,
  port_number VARCHAR(10) NOT NULL,
  project_name VARCHAR(255) NOT NULL,
  application_name VARCHAR(255) NOT NULL,
  description TEXT
);
