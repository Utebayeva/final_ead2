create table users
(
    user_id       serial not null,
    user_login    varchar(255),
    user_password varchar(255),
    user_balance  double precision
);

alter table users owner to postgres;