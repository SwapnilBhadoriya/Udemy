DROP DATABASE Udemy;

CREATE DATABASE IF NOT EXISTS Udemy;

USE Udemy;

-- Table Creation
-- DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
    id INT Auto_Increment Primary Key,
    username VARCHAR(200),
    email VARCHAR(200),
    password VARCHAR(255),
    role Enum('admin', 'tutor', 'student'),
    created_at TIMESTAMP Default now(),
    updated_at TIMESTAMP Default now()
);

-- DROP TABLE IF EXISTS Courses;
CREATE TABLE Courses(
    id INT Auto_Increment Primary Key,
    name VARCHAR(255),
    price INT,
    instructor_id INT NOT NULL,
    description VARCHAR(255),
    created_at TIMESTAMP Default now(),
    updated_at TIMESTAMP Default now(),
    FOREIGN KEY(instructor_id) REFERENCES Users(id) ON DELETE CASCADE
);

-- DROP TABLE IF EXISTS Enrollment;
CREATE TABLE Enrollment (
    enrollment_id INT Auto_Increment Primary Key,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date TIMESTAMP Default now(),
    completion_date TIMESTAMP Default NULL,
    status Enum('In Progress', 'Completed'),
    FOREIGN KEY(user_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY(course_id) REFERENCES Courses(id) ON DELETE CASCADE
);

-- DROP TABLE IF EXISTS Section;
CREATE TABLE Section (
    id INT Auto_Increment Primary Key,
    course_id INT NOT NULL,
    title VARCHAR(255),
    order_serial INT,
    created_at TIMESTAMP Default now(),
    updated_at TIMESTAMP Default now(),
    FOREIGN KEY(course_id) REFERENCES Courses(id) ON DELETE CASCADE
);

-- DROP TABLE IF EXISTS Cart_Items;
CREATE TABLE Cart_Items(
    id INT Auto_Increment Primary Key,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    added_at TIMESTAMP Default now(),
    FOREIGN KEY(user_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY(course_id) REFERENCES Courses(id) ON DELETE CASCADE
);

-- DROP TABLE IF EXISTS Lecture;
CREATE TABLE Lecture(
    id INT Auto_Increment Primary Key,
    section_id INT NOT NULL,
    title VARCHAR(255),
    content_type VARCHAR(20),
    content_url VARCHAR(255),
    duration VARCHAR(255),
    created_at TIMESTAMP Default now(),
    updated_at TIMESTAMP Default now(),
    FOREIGN KEY(section_id) REFERENCES Section(id) ON DELETE CASCADE
);

-- DROP TABLE IF EXISTS Reviews;
CREATE TABLE Reviews(
    id INT Auto_Increment Primary Key,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    rating INT,
    comment VARCHAR(255),
    created_at TIMESTAMP Default now(),
    FOREIGN KEY(user_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY(course_id) REFERENCES Courses(id) ON DELETE CASCADE
);

-- DROP TABLE IF EXISTS Categories;
CREATE TABLE Categories(
    id INT Auto_Increment Primary Key,
    name VARCHAR(255)
);

-- DROP TABLE IF EXISTS CourseCategory;
CREATE TABLE CourseCategory(
    course_id INT,
    category_id INT,
    FOREIGN KEY(course_id) REFERENCES Courses(id) ON DELETE CASCADE,
    FOREIGN KEY(category_id) REFERENCES Categories(id) ON DELETE CASCADE
);