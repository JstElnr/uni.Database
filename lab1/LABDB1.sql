CREATE TABLE clients (
  client_id SERIAL PRIMARY KEY,
  first_name VARCHAR(60),
  last_name VARCHAR(60),
  email VARCHAR(100),
  date_joined DATE,
  status BOOLEAN DEFAULT TRUE
);

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  order_name VARCHAR(100),
  client_id INTEGER REFERENCES clients(client_id)
);
