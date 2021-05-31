a. SELECT users.* FROM types join types.type_id = users.type_id
	WHERE types.type_name = 'Giang Vien';

b. SELECT users.* FROM types join types.type_id = users.type_id
	WHERE types.type_name = 'Sinh Vien';

c. SELECT * FROM courses;

d. SELECT users.* FROM types join types.type_id = users.type_id
	JOIN class_user ON users.user_id = class_user.user_id
	JOIN classes ON class_user.class_id = classes.class_id 
	JOIN courses ON courses.course_id = classes.course_id 
	WHERE (users.user_name LIKE '%Nguyen Van A%')
	AND types.type_name = 'Giang Vien'

e. SELECT users.* FROM types join types.type_id = users.type_id
	JOIN class_user ON users.user_id = class_user.user_id
	JOIN classes ON class_user.class_id = classes.class_id 
	JOIN courses ON courses.course_id = classes.course_id 
	WHERE courses.id IN 
	(
		SELECT courses.id FROM types join types.type_id = users.type_id
			JOIN class_user ON users.user_id = class_user.user_id
			JOIN classes ON class_user.class_id = classes.class_id 
			JOIN courses ON courses.course_id = classes.course_id 
		WHERE (users.user_name LIKE '%Nguyen Van A%')
			AND types.type_name = 'Giang Vien'
			AND (courses.course_name LIKE '%Thuc Tap Doanh Nghiep%')
			AND (courses.course_year = 2021)
			AND (courses.course_semester = 1);
	)

_____________________________________________________________________________
f)
SELECT DISTINCT companies.* FROM type
	join users on type.type_id = users.type_id
	join class_users on users.user_id = class_users.teacher_id
    	join class on class_users.class_id = class.class_id
    	join courses on class.course_id = courses.course_id
    	join trainers on users.trainer_id = trainers.trainer_id
	join companies on trainers.company_id = companies.company_id
    WHERE (users.user_name LIKE 'Nguyen Van A')
    AND (courses.course_name = 'Thuc Tap Doanh Nghiep')

g)
SELECT diary.* FROM type
	JOIN users on type.type_id = users.type_id
	JOIN diary on users.user_id = diary.user_id
	JOIN weeks on diary.diary_id = weeks.diary_id
	JOIN diarycontent on weeks.week_id = diarycontent.week_id
	WHERE (users.user_name LIKE 'tai duc')
    	AND type.type_id = 'TY01'

h)
SELECT diarycontent.* FROM type
JOIN users on type.type_id = users.type_id
JOIN diary on users.user_id = diary.user_id
JOIN weeks on diary.diary_id = weeks.diary_id
JOIN diarycontent on weeks.week_id = diarycontent.week_id
	WHERE type.type_id = 'TY01'
    	AND users.user_name IN
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

_________________________________________________________________________________
j. SELECT d.user_id, d.user_name, j.trainer_id, j.trainer_name ,a.* FROM DiaryContent as a 
	JOIN weeks as b ON a.week_id = b.week_id
	JOIN diary as c ON b.diary_id = c.diary_id
	JOIN users as d ON c.user_id = d.user_id
	JOIN trainers AS j ON d.user_id = j.user_id
	join users as e on  j.user_id = e.user_id
	join Type as t on e.type_id = t.type_id
WHERE users.user_name IN
	(
		SELECT users.user_name FROM courses
        join class on courses.course_id = class.course_id
		join class_users on class.class_id = class_users.class_id 
		join users on class_users.user_id = users.user_id
	WHERE (t.type_name LIKE '%Student%') 
	AND (d.user_name LIKE '%Nguyen Van B%')
	AND (courses.course_year = 2021)
	AND (courses.course_senmester = 1)
	)
)
	






