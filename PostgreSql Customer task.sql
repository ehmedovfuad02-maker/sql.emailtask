DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id                SERIAL PRIMARY KEY,
    firstname         VARCHAR(50)   NOT NULL,
    lastname          VARCHAR(50)   NOT NULL,
    email             VARCHAR(100)  UNIQUE CHECK (email LIKE '%@gmail.com'),
    total_spend       DECIMAL(10,2) CHECK (total_spend > 0),
    status            VARCHAR(20)   DEFAULT 'active',
    registration_date DATE          DEFAULT CURRENT_DATE
);

INSERT INTO customers (firstname, lastname, email, total_spend)
VALUES ('Ferid', 'Ehmedov', 'ferid@gmail.com', 150.50),
       ('Eli', 'Memmedov', 'ali@gmail.com', 40.10),
       ('Mein', 'Baxseliyev', 'mein@gmail.com', 10.00);

SELECT * FROM customers;


SELECT id, firstname, lastname, total_spend,
       ROUND(total_spend) AS normal,
       CEIL(total_spend)  AS yuxari,
       FLOOR(total_spend) AS asagi
FROM customers;


SELECT id, firstname, lastname, total_spend,
       ROUND(total_spend * 0.02, 2) AS cashback
FROM customers;


SELECT id, firstname, lastname, total_spend,
       MOD(total_spend, 300) AS qaliq
FROM customers;

SELECT id, firstname, lastname, total_spend,
       ABS(total_spend - 1000) AS sadiqlik_heddi
FROM customers;

SELECT id, firstname, lastname, total_spend,
       POWER(total_spend, 2) AS kvadrat,
       ROUND(SQRT(total_spend), 2) AS kok
FROM customers;


SELECT firstname,
       UPPER(firstname) AS boyuk,
       LOWER(firstname) AS kicik
FROM customers;

SELECT firstname,
       LENGTH(firstname) AS simvol_sayi
FROM customers;

SELECT firstname,
       INITCAP(firstname) AS duzgun_ad
FROM customers;
