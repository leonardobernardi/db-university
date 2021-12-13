CREATE DATABASE `test_university`;
USE `test_university`;


CREATE TABLE `departments`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`address` VARCHAR(255),
	`phone` INT,
	`email` VARCHAR(100),
	`website` VARCHAR(255),
	`head_of_department` VARCHAR(255),
	PRIMARY KEY(`id`)
	);

CREATE TABLE `degrees`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100),
	`address` VARCHAR(255),
	`email` VARCHAR(100),
	`website` VARCHAR(255),
	`level` VARCHAR(100),
	`departments_id` INT,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`departments_id`) REFERENCES departments(`id`)
);

CREATE TABLE `student`(
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(255),
`surname` VARCHAR(255),
`date_of_birth` DATE,
`fiscal_code` INT,
`enrolment_date` DATE,
`registration_number` INT,
`email` VARCHAR(100),
`degrees_id` INT,
PRIMARY KEY (`id`),
FOREIGN KEY(`degrees_id`) REFERENCES degrees(`id`)
);

CREATE TABLE `courses`(
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(255),
`description` TEXT,
`website` VARCHAR(255),
`cfu` INT,
`degrees_id` INT,
PRIMARY KEY (`id`),
FOREIGN KEY(`degrees_id`) REFERENCES degrees(`id`)
);

CREATE TABLE `exams`(
`id` INT NOT NULL AUTO_INCREMENT,
`date` DATE,
`hour` TIME,
`location` VARCHAR(255),
`address` VARCHAR(255),
`courses_id` INT,
PRIMARY KEY(`id`),
FOREIGN KEY(`courses_id`) REFERENCES courses(`id`)
);

CREATE TABLE `vote`(
`student_id` INT NOT NULL,
`exams_id` INT NOT NULL,
`vote` INT NOT NULL,
PRIMARY KEY(`student_id`, `exams_id`),
FOREIGN KEY(`student_id`) REFERENCES student(`id`),
FOREIGN KEY(`exams_id`) REFERENCES exams(`id`)
);

CREATE TABLE `teachers`(
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(255),
`surname` VARCHAR(255),
`phone` INT,
`email` VARCHAR(255),
`office_address` VARCHAR(255),
PRIMARY KEY(`id`)
);

CREATE TABLE `course_teachers`(
`courses_id` INT NOT NULL,
`teachers_id`INT NOT NULL,
PRIMARY KEY(`courses_id`, `teachers_id`),
FOREIGN KEY(`courses_id`) REFERENCES courses(`id`),
FOREIGN KEY(`teachers_id`) REFERENCES teachers(`id`)
);



