create database movie_ratings
\c movie_ratings

create table genre
    (
    g_id integer not null, 
    gen_name varchar not null,
    primary key g_id,
    );

create table user(
    u_id integer, 
    username varchar(30) not null,
    email varchar(50) not null, 
    password varchar(30) not null, 
    role varchar(15) not null,
    u_ratings varchar,
    primary key u_id,
    );