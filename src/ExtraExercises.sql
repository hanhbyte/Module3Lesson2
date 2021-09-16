CREATE DATABASE students_management;
CREATE TABLE students
(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    Name    VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    Sex     INT DEFAULT '1', #1. Nam, 2. Nữ
    Age     INT         NOT NULL CHECK (18 AND 25),
    Email   VARCHAR(50) NOT NULL UNIQUE,
    Phone   VARCHAR(10) NOT NULL
);

CREATE TABLE classes
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL UNIQUE
);
-- thêm cột classld và làm khoá ngoại của students
ALTER TABLE students
    ADD classld VARCHAR(10);
ALTER TABLE students
    ADD CONSTRAINT FK_classld FOREIGN KEY (classld) REFERENCES students (classld);
-- hiển thịt tất cả sinh viên
select *
from students;
-- hiển thị học viên có tên Anh
select *
from students
where Name = 'Anh';
-- hiển thị học viên có tên bắt đầu bằng chữ H
select *
from students
where Name = 'H';
-- hiện thị học viên quê ở Hà Nội hoặc Đà Nẵng hoặc HỒ Chí Minh
select *
from students
where Address = 'Hà Nội' OR Address = 'Đà Nẵng' OR Address = 'Hồ Chí Minh';
-- hiển thị học viên quê không ở Hà Nội
select *
from students
where not Address='Hà Nội';