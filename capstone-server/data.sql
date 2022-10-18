\c studio_ghibli

DROP TABLE IF EXISTS reservations;
DROP TABLE IF EXISTS customers;

CREATE TABLE users (
    user_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    user_name text NOT NULL,
    pass_word text NOT NULL,
);

CREATE TABLE movie_favorites (
    movie_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    user_id integer NOT NULL REFERENCES users
);