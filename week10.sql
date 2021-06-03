a. SELECT * FROM teachers;

b. SELECT * FROM students 

c. SELECT * FROM courses;

d. SELECT courses.* FROM teachers
	JOIN classes ON teachers.teacher_id = classes.teacher_id
	JOIN courses ON classes.course_id = courses.course_id
	WHERE teachers.teacher_name LIKE '%Nguyen Van A%';

e. SELECT students.* FROM courses
	JOIN classes ON courses.course_id = classes.course_id
	JOIN teachers ON classes.teacher_id = teachers.teacher_id
	JOIN students ON students.class_id = classes.class_id
	WHERE teachers.teacher_name LIKE '%Nguyen Van A%'
	AND courses.course_name LIKE '%Thuc Tap Doanh Nghiep%'
	AND courses.course_semester = '1'
	AND courses.course_year = '2020-2021';

___________________________________________________________________________
f.
SELECT companies.* FROM courses
	JOIN classes ON courses.course_id = classes.course_id
	JOIN teachers ON classes.teacher_id = teachers.teacher_id
	JOIN students ON students.class_id = classes.class_id
	join trainers ON students.trainer_id = trainers.trainer_id
	join companies on companies.company_id = trainers.company_id
	WHERE (teachers.teacher_name LIKE '%Nguyen Van A%')
	AND (courses.course_name = 'Thuc Tap Doanh Nghiep');

g.
SELECT diaries.* FROM students
	JOIN diaries on students.student_id = diaries.student_id
	JOIN workdays on diaries.diary_id = workdays.diary_id
	JOIN records on workdays.workday_id = records.workday_id
	WHERE students.student_name LIKE 'Nguyen Van A'

h.
SELECT records.* FROM students
	JOIN diaries on students.student_id = diaries.student_id
	JOIN workdays on diaries.diary_id = workdays.diary_id
	JOIN records on workdays.workday_id = records.workday_id
	WHERE students.student_name IN
	(
		SELECT students.student_name FROM courses
		JOIN classes ON courses.course_id = classes.course_id
		JOIN students ON students.class_id = classes.class_id
		WHERE (
			courses.course_name LIKE '%Thuc Tap Doanh Nghiep%'
			AND (courses.course_year = '2020-2021')
			AND (courses.course_semester = '1')
		)
	)

i.
SELECT records.review_of_teacher FROM students
	JOIN diaries on students.student_id = diaries.student_id
	JOIN workdays on diaries.diary_id = workdays.diary_id
	JOIN records on workdays.workday_id = records.workday_id
	WHERE students.student_name IN
	(
		SELECT students.student_name FROM courses
		JOIN classes ON courses.course_id = classes.course_id
		JOIN students ON students.class_id = classes.class_id
		WHERE (
			courses.course_name LIKE '%Thuc Tap Doanh Nghiep%'
			AND (courses.course_year = '2020-2021')
			AND (courses.course_semester = '1')
			AND students.student_name LIKE 'Nguyen Van B'
		)
	)

j.
SELECT records.review_of_trainer FROM students
	JOIN diaries on students.student_id = diaries.student_id
	JOIN workdays on diaries.diary_id = workdays.diary_id
	JOIN records on workdays.workday_id = records.workday_id
	WHERE students.student_name IN
	(
		SELECT students.student_name FROM courses
		JOIN classes ON courses.course_id = classes.course_id
		JOIN students ON students.class_id = classes.class_id
		WHERE (
			courses.course_name LIKE '%Thuc Tap Doanh Nghiep%'
			AND (courses.course_year = '2020-2021')
			AND (courses.course_semester = '1')
			AND students.student_name LIKE 'Nguyen Van B'
		)
	)