INSERT INTO address VALUES
(default,'Ha Noi'),
(default,'Ha Nam'),
(default,'Thai Binh'),
(default,'Nam Dinh'),
(default,'Bac Ninh');

INSERT INTO course(course_name,course_description) VALUES
('JAVA','Mon nang cao'),
('JS','Mon tu chon'),
('HTML','Mon co ban'),
('CSS','khong co gi'),
('SQL','Hoc trong module 3');

INSERT INTO classes(class_name,class_language) VALUES
('A','java'),
('B','java'),
('C','js'),
('D','js'),
('E','sql');

INSERT INTO student(lastname,firstname,address_id,age,phone,class_id) VALUES
('Nguyen','Hai Son',2,29,01652537636,1),
('Nguyen','Hoai Nam',1, 32,0978779687,1),
('Tran','Minh Cong',3, 24,044444444,2),
('Trieu','Long Giang',4, 31,091546789,2),
('Nguyen','Minh Tien',5, 19, 0123456788,3),
('Dang','A Dua',5, 20, 123456789,3),
('Dong','Tien Anh', 4,20,987654321,4),
('Phung','Khac Dung',3,26,456789231,4),
('Dang','Trung Hieu',2, 24,1324567859,5),
('Ngo','Hoang Hai',1,25,345978615,5),
('Le','Anh',2,25,45873824,1),
('Ho','Chi Minh',3,25,246872315,2),
('Mac','Lenin',4,25,012345876,3);

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
