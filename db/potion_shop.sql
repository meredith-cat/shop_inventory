-- This file creates the tables within the database
DROP TABLE IF EXISTS potions;
DROP TABLE IF EXISTS types;
DROP TABLE IF EXISTS makers;

CREATE TABLE types(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE makers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  evil INT,
  certified BOOLEAN
);

CREATE TABLE potions(
  id SERIAL PRIMARY KEY,
  name VARCHAR (255),
  description VARCHAR (255),
  quantity INT,
  cost_price FLOAT,
  sale_price FLOAT,
  maker_id INT REFERENCES makers(id) ON DELETE CASCADE,
  type_id INT REFERENCES types(id) ON DELETE CASCADE
);
