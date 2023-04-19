-- v2.0
INSERT INTO person (id, name, status) SELECT 1, 'Atish', 1 WHERE NOT EXISTS (SELECT name FROM person WHERE name = 'Atish');
INSERT INTO person (id, name, status) SELECT 2, 'Swapnil', 0 WHERE NOT EXISTS (SELECT name FROM person WHERE name = 'Swapnil');
INSERT INTO person (id, name, status) SELECT 3, 'Shashank', 1 WHERE NOT EXISTS (SELECT name FROM person WHERE name = 'Shashank');
INSERT INTO person (id, name, status) SELECT 4, 'Arvind', 0 WHERE NOT EXISTS (SELECT name FROM person WHERE name = 'Arvind');
INSERT INTO person (id, name, status) SELECT 5, 'Netrica', 1 WHERE NOT EXISTS (SELECT name FROM person WHERE name = 'Netrica');

-- v2.0
--INSERT INTO products (id, name, category) SELECT 1, 'Cheese', 'Dairy' WHERE NOT EXISTS (SELECT name FROM products WHERE name = 'Cheese');
--INSERT INTO products (id, name, category) SELECT 2, 'Milk', 'Dairy' WHERE NOT EXISTS (SELECT name FROM products WHERE name = 'Milk');
--INSERT INTO products (id, name, category) SELECT 3, 'Butter', 'Dairy' WHERE NOT EXISTS (SELECT name FROM products WHERE name = 'Butter');
--INSERT INTO products (id, name, category) SELECT 4, 'Popcorn', 'Dairy' WHERE NOT EXISTS (SELECT name FROM products WHERE name = 'Popcorn');
--INSERT INTO products (id, name, category) SELECT 5, 'Red Bull', 'Dairy' WHERE NOT EXISTS (SELECT name FROM products WHERE name = 'Red Bull');
--
--INSERT INTO orders (id, person_id, product_id) SELECT 1, 1, 2 WHERE NOT EXISTS (SELECT person_id FROM orders WHERE person_id = 1 and product_id = 2);
--INSERT INTO orders (id, person_id, product_id) SELECT 2, 2, 2 WHERE NOT EXISTS (SELECT person_id FROM orders WHERE person_id = 2 and product_id = 2);
--INSERT INTO orders (id, person_id, product_id) SELECT 3, 1, 4 WHERE NOT EXISTS (SELECT person_id FROM orders WHERE person_id = 1 and product_id = 4);


