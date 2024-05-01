-- Using MySQL

SHOW DATABASES;

 -- Create the database if it does not exist
CREATE DATABASE `linkedin`;
USE `linkedin`;


--Create tables
--USERS
CREATE TABLE `users`(
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `username` VARCHAR(255) NOT NULL UNIQUE,
    `password` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`)
);


--SCHOOLS and UNIVERSITIES
CREATE TABLE `schools`(
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `type` ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    `school_location` VARCHAR(255) NOT NULL,
    `year_founded` YEAR,
    PRIMARY KEY(`id`)
);


--COMPANIES
CREATE TABLE `companies`(
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `industry` ENUM('Technology', 'Education', 'Business') NOT NULL,
    `company_location` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`id`)
);


--CONNECTIONS
    --People
CREATE TABLE `people_connections`(
    `id` INT AUTO_INCREMENT,
    `user1_id` INT,
    `user2_id` INT,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user1_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`user2_id`) REFERENCES `users`(`id`)
);

    --Schools
CREATE TABLE `school_connections`(
    `id` INT AUTO_INCREMENT,
    `user_id` INT,
    `school_id` INT,
    `start_date` DATE,
    `end_date` DATE,
    `degree_type` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`school_id`) REFERENCES `schools`(`id`)
);

    --Companies
CREATE TABLE `company_connections`(
    `id` INT AUTO_INCREMENT,
    `user_id` INT,
    `company_id` INT,
    `title` VARCHAR(255),
    `start_date` DATE,
    `end_date` DATE,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)
);
