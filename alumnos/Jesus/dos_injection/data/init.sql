CREATE DATABASE IF NOT EXISTS `security`;

USE `security`;

CREATE TABLE users (
   id INT PRIMARY KEY AUTO_INCREMENT,
   username VARCHAR(50) NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username) VALUES ('user1');
INSERT INTO users (username) VALUES ('user2');
INSERT INTO users (username) VALUES ('user3');
INSERT INTO users (username) VALUES ('user4');
INSERT INTO users (username) VALUES ('user5');
