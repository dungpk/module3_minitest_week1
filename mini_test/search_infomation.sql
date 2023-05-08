use studentManager;
-- Tìm kiếm HV có họ Nguyen
select*from student
where lastname = 'Nguyen';

-- Tìm kiếm HV có ten Anh
select*from student
where firstname like '%Anh';

-- Tim kiem HV có độ tuổi từ 18-25
select*from student
where age between 18 and 25;

-- Tìm kiếm HV có id là 12 hoặc 13
select*from student
where id between 11 and 15;