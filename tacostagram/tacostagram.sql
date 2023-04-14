
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS follows;
DROP TABLE IF EXISTS photos;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    real_name TEXT,
    location TEXT
);

CREATE TABLE follows (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    followed_user_id INTEGER,
    follower_user_id INTEGER
);

CREATE TABLE photos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    time_stamp TEXT
);

CREATE TABLE likes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    photo_id INTEGER
);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    photo_id INTEGER,
    time_stamp TEXT
);