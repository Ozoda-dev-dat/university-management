CREATE TABLE Students (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    dob DATE NOT NULL,
    enrollment_year INT NOT NULL
);

CREATE TABLE Teachers (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    specialization VARCHAR(100) NOT NULL
);

CREATE TABLE Courses (
    id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT REFERENCES Teachers(id) ON DELETE SET NULL
);

CREATE TABLE Enrollments (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(id) ON DELETE CASCADE,
    course_id INT REFERENCES Courses(id) ON DELETE CASCADE,
    enrollment_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Grades (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(id) ON DELETE CASCADE,
    course_id INT REFERENCES Courses(id) ON DELETE CASCADE,
    grade VARCHAR(2) CHECK (grade IN ('A', 'B', 'C', 'D', 'F')),
    date_given DATE DEFAULT CURRENT_DATE
);
