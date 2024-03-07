create table users (
    id bigserial primary key,
    name varchar,
    email varchar unique,
    phone_number varchar,
    active boolean,
    password varchar
);

create table products (
    id bigserial not null primary key,
    user_id bigint,
    title varchar,
    description varchar,
    price integer,
    author varchar,
    date_of_created timestamp(6),
    preview_image_id bigint,
    foreign key (user_id) references users(id)
);

