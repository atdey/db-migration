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
        REFERENCES public.person (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_orders_product FOREIGN KEY (product_id)
        REFERENCES public.products (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

INSERT INTO products (id, name, category)
VALUES  (1, 'Cheese', 'Dairy'),
        (2, 'Milk', 'Dairy'),
        (3, 'Butter', 'Dairy'),
        (4, 'Popcorn', 'Dairy'),
        (5, 'Red Bull', 'Dairy');

INSERT INTO orders (id, person_id, product_id)
VALUES   (1, 1, 2),
         (2, 2, 2),
         (3, 1, 4);