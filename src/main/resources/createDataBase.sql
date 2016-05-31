CREATE DATABASE IF NOT EXISTS time;
USE time;

DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name varchar(45)                  NOT NULL,
  surname varchar(45)               NOT NULL,
  position varchar (45)             NOT NULL
);

DROP TABLE IF EXISTS project;
CREATE TABLE project (
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  projectName varchar(45)           NOT NULL,
  responsibleEmployee varchar(45)   NOT NULL,
  projectId INT                     NOT NULL,
  FOREIGN KEY (projectId) REFERENCES employee (id)
);

DROP TABLE IF EXISTS task;
CREATE TABLE task (
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  taskName varchar(45) NOT NULL,
  responsibleEmployee varchar(45)   NOT NULL,
  taskId INT                        NOT NULL,
  FOREIGN KEY (taskId) REFERENCES project (id)
);

DROP TABLE IF EXISTS recordSpentTime;
CREATE TABLE recordSpentTime (
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  employeeName varchar(45)          NOT NULL,
  calendarInsertRecord varchar(45)  NOT NULL,
  numberOfHour varchar(45)          NOT NULL,
  recordSpentTimeId INT             NOT NULL,
  FOREIGN KEY (recordSpentTimeId) REFERENCES task (id)
);


