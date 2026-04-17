CREATE TABLE shops (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE products2 (
    id INT,
    name VARCHAR(50),
    shop_id INT
);

INSERT INTO shops VALUES
(1,'Shop1'),(2,'Shop2');

INSERT INTO products2 VALUES
(1,'Olma',1),(2,'Banan',1),(3,'Anor',2);

SELECT s.name, COUNT(p.id) AS total_products
FROM shops s
INNER JOIN products2 p ON s.id = p.shop_id
GROUP BY s.name
HAVING COUNT(p.id) > 1;
