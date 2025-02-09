SELECT * FROM Students;

SELECT Teachers.full_name, Courses.course_name 
FROM Teachers
JOIN Courses ON Teachers.id = Courses.teacher_id;

SELECT Students.full_name, Courses.course_name 
FROM Enrollments
JOIN Students ON Enrollments.student_id = Students.id
JOIN Courses ON Enrollments.course_id = Courses.id
WHERE Students.full_name = 'Ozoda Aminjonova';

