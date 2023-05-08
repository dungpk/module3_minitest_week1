CREATE DATABASE StudentManager;

Use StudentManager;

-- Tao bang class
CREATE TABLE Classes(
id INT AUTO_INCREMENT PRIMARY KEY,
class_name VARCHAR(100) NOT NULL,
class_language VARCHAR(100) NOT NULL,
class_description TEXT
);


-- Tao Bang address
CREATE TABLE Address(
id INT AUTO_INCREMENT PRIMARY KEY,
address VARCHAR(255)
);

-- Tao bang students
CREATE TABLE Student(
id INT AUTO_INCREMENT PRIMARY KEY,
lastName VARCHAR(255) NOT NULL,
firstName varchar(255) not null,
address_id INT,
age INT,
phone INT UNIQUE,
class_id INT,
FOREIGN KEY (address_id) REFERENCES address(id),
FOREIGN KEY (class_id) REFERENCES classes(id)
);

-- Tao Bang Course
CREATE TABLE Course(
id INT AUTO_INCREMENT PRIMARY KEY,
course_name VARCHAR(255) NOT NULL ,
course_description TEXT
);


-- Tao bang Mark

CREATE TABLE Mark(
course_id INT,
student_id INT,
mark INT,
FOREIGN KEY (course_id) REFERENCES course(id) ,
FOREIGN KEY (student_id) REFERENCES student(id)
);
ALTER TABLE Mark ADD CONSTRAINT primary key (course_id,student_id);
