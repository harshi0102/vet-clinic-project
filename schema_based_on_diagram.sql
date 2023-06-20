CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  date_birth DATE
);

CREATE TABLE medical_histories (
  id SERIAL PRIMARY KEY,
  admit_at TIMESTAMP,
  patient_id INT,
  status VARCHAR(50),
  FOREIGN KEY (patient_id) REFERENCES patients (id)
);

CREATE TABLE invoices (
  id SERIAL PRIMARY KEY,
  total_amount DECIMAL,
  generated_at TIMESTAMP,
  payed_at TIMESTAMP,
  medical_history_id INT,
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories (id)
);

CREATE TABLE invoice_items (
  id SERIAL PRIMARY KEY,
  unit_price DECIMAL,
  quantity INT,
  total_price DECIMAL,
  invoice_id INT,
  treament_id INT,
  FOREIGN KEY (invoice_id) REFERENCES invoices (id),
  FOREIGN KEY (treament_id) REFERENCES treaments (id)
);
CREATE TABLE treaments (
  id SERIAL PRIMARY KEY,
  type INT,
  name VARCHAR(225),
  medical_history_id INT,
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories (id)
);