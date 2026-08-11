CREATE DATABASE notes_app;

USE notes_app;

CREATE TABLE users (

    id INT AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(100) NOT NULL,

    email VARCHAR(120) UNIQUE

);

CREATE TABLE notes (

    id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT,

    content TEXT,

    FOREIGN KEY (user_id)
    REFERENCES users(id)

);

INSERT INTO users(name,email)

VALUES

('Alice','alice@gmail.com'),

('Bob','bob@gmail.com');

INSERT INTO notes(user_id,content)

VALUES

(1,'Study Node.js'),

(1,'Finish Assignment'),

(2,'Prepare Presentation');