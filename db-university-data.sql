USE `test_university`;

INSERT INTO `departments`(`name`) VALUES('Lettere e Filosofia');
INSERT INTO `departments`(`name`) VALUES('INGEGNERIA');

INSERT INTO `degrees`(`name`, `departments_id`) VALUES('Pinco', '5');
UPDATE `degrees` SET `name`='Informatica' WHERE `id`= 5;
INSERT INTO `degrees`(`name`, `departments_id`) VALUES('Filosofia', '4');
INSERT INTO `degrees`(`name`, `departments_id`) VALUES('Lettere', '4');

INSERT INTO `courses`(`name`, `degrees_id`) VALUES ('Programmazione', '5');
INSERT INTO `courses`(`name`, `degrees_id`) VALUES ('Estetica', '6');
INSERT INTO `courses`(`name`, `degrees_id`) VALUES ('Filologia', '7');

INSERT INTO `teachers`(`name`) VALUES ('Pinco');
INSERT INTO `teachers`(`name`) VALUES ('Pallo');
INSERT INTO `teachers`(`name`) VALUES ('Caio');

INSERT INTO `student`(name, degrees_id) VALUES ('Tizio', '5'); 
INSERT INTO `student`(name, degrees_id) VALUES ('Cesare', '6');
INSERT INTO `student`(name, degrees_id) VALUES ('Cleopatra', '7');

INSERT INTO `exams`(`date`) VALUES ('2023-10-11');
INSERT INTO `exams`(`date`) VALUES ('2023-11-11');
INSERT INTO `exams`(`date`) VALUES ('2023-12-11');