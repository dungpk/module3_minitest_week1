use studentmanager;

INSERT INTO address VALUES
(default,'Ha Noi'),
(default,'Bac Kan'),
(default,'Ca Mau'),
(default,'Tuyen Quang'),
(default,'HCM City');

-- Thống kê số lượng học viên các lớp (count)
select class_name, count(class_id) as 'number of student'
from student
inner join classes on student.class_id = classes.id
group by class_name;

-- Thống kê số lượng học viên tại các tỉnh (count)     
select address, count(address) as  'number of student'
from address
left join student on student.address_id = address.id
group by address;


-- Tính điểm trung bình của các khóa học (avg)

drop table mark;

CREATE TABLE Mark(
id INT AUTO_INCREMENT PRIMARY KEY,
course_id INT,
student_id INT,
mark INT,
FOREIGN KEY (course_id) REFERENCES course(id),
FOREIGN KEY (student_id) REFERENCES student(id)
);
ALTER TABLE Mark Drop id;
ALTER TABLE Mark ADD CONSTRAINT primary key (course_id,student_id);
INSERT INTO mark(course_id,student_id,mark) VALUES
(1,1,10),
(2,1,9),
(3,1,8),
(4,1,7),
(5,1,6),
(1,2,9),
(1,3,8),
(1,4,7),
(1,5,6),
(1,6,5),
(1,7,10),
(1,8,9),
(1,9,8),
(1,10,7),
(1,11,6);

select course_name, avg(mark)
from mark
inner join course on course.id = mark.course_id
group by course_name;


-- Khóa học có điểm trung bình cao nhất
select course_name, avgMark from (
select course_name, avg(mark) as avgMark
from mark
inner join course on course.id = mark.course_id
group by course_name
) as avgTable
where avgMark = ( select max(avgMark) from (select course_name, avg(mark) as avgMark
from mark
inner join course on course.id = mark.course_id
group by course_name
) as avgTable);