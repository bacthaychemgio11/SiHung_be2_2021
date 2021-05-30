a. SELECT * FROM Teachers;

b. SELECT * FROM Users 

c. SELECT * FROM Courses;

d. SELECT a.* FROM Class as a JOIN Class_users as b ON a.class_id = b.class_id
JOIN Teachers as c ON b.teacher_id = c.teacher_id WHERE c.name LIKE '%Nguyen Van A%';

e. SELECT e.* FROM Courses as a join Class as b ON a.course_id = b.course_id
	JOIN Class_users as c ON c.class_id = b.class_id 
	JOIN Teachers d ON d.teacher_id= c.teacher_id
	JOIN Users as e ON c.user_id = e.user_id
	WHERE (d.name LIKE '%Nguyen Van A%')
	AND (a.course_name LIKE '%Thuc Tap Doanh Nghiep%')
	AND (a.course_year = 2021)
	AND (a.course_senmester = 1);




_____________________________________________________________________________
f)
SELECT companies.* FROM courses
	join class on courses.course_id = class.course_id
	join class_users on class.class_id = class_users.class_id 
	join teachers on teachers.teacher_id = class_users.teacher_id
	join users on class_users.user_id = users.user_id
	join trainers on trainers.user_id = users.user_id
	join companies on companies.company_id = trainers.company_id
	WHERE (teachers.name LIKE 'Nguyen Van A')
	AND (courses.course_name = 'Thuc Tap Doanh Nghiep')
	
g)
SELECT diary.* FROM users
JOIN diary on users.user_id = diary.user_id
JOIN weeks on diary.diary_id = weeks.diary_id
JOIN diarycontent on weeks.week_id = diarycontent.week_id
WHERE (users.user_name LIKE 'Nguyen Van A')



h)
SELECT diarycontent.* FROM users
JOIN diary on users.user_id = diary.user_id
JOIN weeks on diary.diary_id = weeks.diary_id
JOIN diarycontent on weeks.week_id = diarycontent.week_id
	WHERE users.user_name IN
	(
		SELECT users.user_name FROM courses
        	join class on courses.course_id = class.course_id
		join class_users on class.class_id = class_users.class_id 
		join users on class_users.user_id = users.user_id
		WHERE (
			courses.course_name = 'Thuc Tap Doanh Nghiep'
			AND (courses.course_year = '2021')
			AND (courses.course_semester = 'TT1')
		)
	)

i)
SELECT diarycontent.* FROM users
JOIN diary on users.user_id = diary.user_id
JOIN weeks on diary.diary_id = weeks.diary_id
JOIN diarycontent on weeks.week_id = diarycontent.week_id
	WHERE users.user_name IN
	(
		SELECT users.user_name FROM courses
        join class on courses.course_id = class.course_id
		join class_users on class.class_id = class_users.class_id 
		join users on class_users.user_id = users.user_id
		WHERE (
			courses.course_name = 'Thuc Tap Doanh Nghiep'
			AND (courses.course_year = '2021')
			AND (courses.course_semester = 'TT1')
			AND (users.user_name LIKE 'viet nguyen')
		)
	)


-- (_____NEU DUNG BANG TYPE:_____)

SELECT d.user_id, d.user_name, i.teacher_id, i.name ,a.* FROM DiaryContent as a 
	JOIN weeks as b ON a.week_id = b.week_id
	JOIN diary as c ON b.diary_id = c.diary_id
	JOIN users as d ON c.user_id = d.user_id
	JOIN type as e ON d.type_id = e.type_id
	JOIN class_users as f ON f.user_id = d.user_id
	JOIN class as g ON f.class_id = g.class_id
	JOIN courses as h ON h.course_id  = g.course_id
	JOIN teachers AS i ON f.teacher_id = i.teacher_id
	JOIN trainers AS j ON j.user_id = d.user_id 
	WHERE (e.type_name LIKE '%Student%') 
	AND (d.user_name LIKE '%Nguyen Van B%')
	AND (h.course_year = 2021)
	AND (h.course_senmester = 1);



_________________________________________________________________________________
j)
SELECT d.user_id, d.user_name, j.trainer_id, j.trainer_name ,a.* FROM DiaryContent as a 
	JOIN weeks as b ON a.week_id = b.week_id
	JOIN diary as c ON b.diary_id = c.diary_id
	JOIN users as d ON c.user_id = d.user_id
	JOIN type as e ON d.type_id = e.type_id
	JOIN class_users as f ON f.user_id = d.user_id
	JOIN class as g ON f.class_id = g.class_id
	JOIN courses as h ON h.course_id  = g.course_id
	JOIN teachers AS i ON f.teacher_id = i.teacher_id
	JOIN trainers AS j ON j.user_id = d.user_id 
	WHERE (e.type_name LIKE '%Student%') 
	AND (d.user_name LIKE '%Nguyen Van B%')
	AND (h.course_year = 2021)
	AND (h.course_senmester = 1);




