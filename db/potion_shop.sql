-- This file creates the tables within the database

DROP TABLE IF EXISTS types;
DROP TABLE IF EXISTS makers;
DROP TABLE IF EXISTS potions;

CREATE TABLE types(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE makers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  evil BOOLEAN
);

CREATE TABLE potions(
  id SERIAL PRIMARY KEY,
  name VARCHAR (255),
  description VARCHAR (255),
  quantity INT,
  cost_price INT,
  sale_price INT,
  maker_id INT REFERENCES makers(id) ON DELETE CASCADE,
  type_id INT REFERENCES types(id) ON DELETE CASCADE
);
