DROP DATABASE IF EXISTS scheduler_values_db;
CREATE DATABASE scheduler_values_db;

\c scheduler_values_db;

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!when the user selects the dwelling and services, set the state of the appointment
-- (((home sqft - dwelling_base_sq_ft) * TOTAL_rate_over_base_time) + TOTAL_base_time)
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


CREATE TABLE appointment_blocks (
  appointment_block_id SERIAL PRIMARY KEY,
  on_site BOOLEAN NOT NULL,
  base_time INTEGER NOT NULL,
  rate_over_base_time INTEGER NOT NULL,
  base_fee INTEGER NOT NULL,
  rate_over_base_fee INTEGER NOT NULL
);

CREATE TABLE additional_services (
  additional_services_id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  data_collection INTEGER NOT NULL,
  report_writing INTEGER NOT NULL,
  client_presentation INTEGER NOT NULL
);

CREATE TABLE availability_options (
  availability_options_id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  differential_scheduling VARCHAR(100) NOT NULL,
  data_collection INTEGER NOT NULL,
  report_writing INTEGER NOT NULL,
  client_presentation INTEGER NOT NULL
);

CREATE TABLE dwelling_adjustments (
  dwelling_type_id SERIAL PRIMARY KEY,
  dwelling_type VARCHAR(30) NOT NULL,
  base_sq_ft INTEGER NOT NULL,
  data_collection INTEGER NOT NULL,
  report_writing INTEGER NOT NULL,
  client_presentation INTEGER NOT NULL
);

CREATE TABLE services (
  service_id SERIAL PRIMARY KEY,
  title VARCHAR(45) NOT NULL,
  differential_scheduling BOOLEAN NOT NULL,
  data_collection INTEGER NOT NULL,
  report_writing INTEGER NOT NULL,
  client_presentation INTEGER NOT NULL
);








