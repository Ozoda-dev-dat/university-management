-- Talabalar
INSERT INTO Students (full_name, email, phone, dob, enrollment_year)
VALUES
    ('Ozoda Aminjonova', 'ozoda@example.com', '998901234567', '2006-08-14', 2023),
    ('Javohir Islomov', 'javohir@example.com', '998931112233', '2004-05-22', 2022);

-- O'qituvchilar
INSERT INTO Teachers (full_name, email, phone, specialization)
VALUES
    ('Akmal Raxmonov', 'akmal@example.com', '998907654321', 'Backend Development'),
    ('Shoxrux Sobirov', 'shoxrux@example.com', '998991112233', 'Frontend Development');

-- Kurslar
INSERT INTO Courses (course_name, teacher_id)
VALUES
    ('Python Backend', 1),
    ('Vue.js Frontend', 2);

-- Kursga yozilish
INSERT INTO Enrollments (student_id, course_id)
VALUES
    (1, 1),
    (2, 2);

-- Baholar
INSERT INTO Grades (student_id, course_id, grade)
VALUES
    (1, 1, 'A'),
    (2, 2, 'B');
