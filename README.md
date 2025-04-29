create database computer_store

create table if not exists products
(
    id          int auto_increment
        primary key,
    name        varchar(255)   not null,
    description text           null,
    price       decimal(10, 2) not null,
    stock       int default 0  not null,
    category    varchar(100)   null,
    image       mediumblob     null
);

create table if not exists users
(
    user_id    int auto_increment
        primary key,
    username   varchar(50)                         not null,
    password   varchar(255)                        not null,
    email      varchar(100)                        not null,
    full_name  varchar(100)                        null,
    address    varchar(255)                        null,
    phone      varchar(15)                         null,
    created_at timestamp default CURRENT_TIMESTAMP null,
    constraint email
        unique (email),
    constraint username
        unique (username)
);

——
docker compose exec mysql mysql -u root --password=root -D computer_store
