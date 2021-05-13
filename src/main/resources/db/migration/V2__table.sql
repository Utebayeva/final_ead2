create table products
(
    product_id       serial not null,
    product_name     varchar(255),
    product_desc     varchar(255),
    product_quantity integer,
    product_price    double precision
);

alter table products owner to postgres;