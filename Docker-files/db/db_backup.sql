USE springdb;

CREATE TABLE `status`
(
    `status_id` INT AUTO_INCREMENT PRIMARY KEY,
    `status_name` VARCHAR(30) NOT NULL
);


CREATE TABLE `team_members`
(
    `member_id` INT AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(60) NOT NULL,
    `last_name` VARCHAR(60) NOT NULL,
    `email_address` VARCHAR(250) NOT NULL
);


CREATE TABLE `type`
(
    `type_id` INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE `project`
(
    `project_id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(60) NOT NULL,
    `description` VARCHAR(250),
    `status_id` INT DEFAULT 1,
    `member_id` INT,
    FOREIGN KEY(`status_id`) REFERENCES status(`status_id`),
    FOREIGN KEY (`member_id`) REFERENCES team_members(`member_id`)
);

CREATE TABLE `item`
(
    `item_id` INT AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(60) NOT NULL,
    `description` VARCHAR(250),
    `status_id` INT,
    FOREIGN KEY(`status_id`) REFERENCES status(`status_id`),
    `type_id` INT,
    `member_id` INT,
    FOREIGN KEY(`type_id`) REFERENCES type(`type_id`),
    FOREIGN KEY (`member_id`) REFERENCES team_members(`member_id`)
);

INSERT INTO springdb.team_members VALUES (1, 'John', 'Thompson', 'j.thompson@spring.com');
INSERT INTO springdb.team_members VALUES (2, 'Mary', 'Johnson', 'm.johnson@spring.com');
INSERT INTO springdb.team_members VALUES (3, 'Judy', 'Gordon', 'j.gordon@spring.com');
INSERT INTO springdb.team_members VALUES (4, 'Frank', 'Williams', 'f.williams@spring.com');

INSERT INTO springdb.status VALUES (1,'To Do');
INSERT INTO springdb.status VALUES (2,'In Progress');
INSERT INTO springdb.status VALUES (3,'To Validate');
INSERT INTO springdb.status VALUES (4,'Done');

INSERT INTO springdb.type VALUES (1,'Task');
INSERT INTO springdb.type VALUES (2,'Study');
INSERT INTO springdb.type VALUES (3,'Support');
INSERT INTO springdb.type VALUES (4,'Bug');

INSERT INTO springdb.project VALUES (1,'Project Metro','Increase productivity',1, 1);
INSERT INTO springdb.project VALUES (2,'Project Ivory','Reduce project time and cost',3, 2);
INSERT INTO springdb.project VALUES (3,'Project Apollo','Improve communication between teams',4, 3);
INSERT INTO springdb.project VALUES (4,'Project Kodiak','Identify innovative solutions and approaches',3, 4);

INSERT INTO springdb.item VALUES (1, 'Implement Project Apollo', 'Implement the results of Project Apollo', 1, 1, 1);
INSERT INTO springdb.item VALUES (2, 'Project Apollo: PIR', 'Conduct a PIR of Project Apollo', 2, 2, 2);
INSERT INTO springdb.item VALUES (3, 'Define tasks for Project Metro', 'Define project plan and Roadmap', 4, 2, 3);
INSERT INTO springdb.item VALUES (4, 'Fix website bug', 'Test website using different browsers', 3, 4, 4);
