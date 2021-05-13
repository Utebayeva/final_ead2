create table orders
(
    order_id     serial not null,
    user_id      serial not null,
    product_id   serial not null,
    user_login   varchar(255),
    product_name varchar(255)
);

alter table orders owner to postgres;