CREATE TABLE products
(
    id integer NOT NULL,
    name varchar(100) not null,
    category varchar(100),
    PRIMARY KEY (id)
);

CREATE TABLE orders
(
    id integer NOT NULL,
    person_id integer NOT NULL,
    product_id integer NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_orders_person FOREIGN KEY (person_id)
        REFERENCES person (id),
    CONSTRAINT fk_orders_product FOREIGN KEY (product_id)
        REFERENCES products (id)
);

INSERT INTO products (id, name, category)
VALUES  (1, 'Cheese', 'Dairy'),
        (2, 'Milk', 'Dairy'),
        (3, 'Butter', 'Dairy'),
        (4, 'Popcorn', 'Dairy'),
        (5, 'Red Bull', 'Dairy');