CREATE TABLE Warehouses(
    code SERIAL PRIMARY KEY,
    location VARCHAR(255),
    capacity INTEGER
);

CREATE TABLE boxes(
    code VARCHAR(10) PRIMARY KEY,
    contents VARCHAR(255),
    value NUMERIC(10,2),
    warehouse INTEGER REFERENCES 

);

