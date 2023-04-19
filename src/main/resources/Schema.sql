create table if not exists PERSON
(
  ID int not null,
  NAME varchar(100) not null,
  STATUS int,
  PRIMARY KEY ( ID )
);

CREATE TABLE if not exists products
(
    id integer NOT NULL,
    name varchar(100) not null,
    category varchar(100),
    PRIMARY KEY (id)
);

CREATE TABLE if not exists orders
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



