CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL,
    species_id INT,
    owner_id INT
);

ALTER TABLE animal ADD species_id INT;
ALTER TABLE animal ADD owner_id INT;
ALTER TABLE animal ADD FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animal ADD FOREIGN KEY (owner_id) REFERENCES owners(id);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(250),
    age INT
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(250)
);
