CREATE DATABASE IF NOT EXISTS questiondb;

USE questiondb;

CREATE TABLE IF NOT EXISTS question (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(50) NOT NULL,
    difficulty_level VARCHAR(50) NOT NULL,
    option1 VARCHAR(100) NOT NULL,
    option2 VARCHAR(100) NOT NULL,
    option3 VARCHAR(100) NOT NULL,
    option4 VARCHAR(100) NOT NULL,
    question_title VARCHAR(100) NOT NULL,
    right_answer VARCHAR(100) NOT NULL
);

INSERT INTO question (category, difficulty_level, option1, option2, option3, option4, question_title, right_answer) VALUES
('Java', 'Easy', 'class', 'interface', 'extends', 'implements', 'Which Java keyword is used to create a subclass?', 'extends'),
('Java', 'Easy', '4', '5', '6', 'Compile error', 'What is the output of the following Java code snippet?', '5'),
('Java', 'Easy', 'true', 'false', '0', 'null', 'In Java, what is the default value of an unitialized boolean variable?', 'false'),
('Java', 'Easy', 'try', 'throw', 'catch', 'finally', 'Which Java keyword is used to explicitly throw an exception?', 'throw'),
('Java', 'Easy', 'It indicates that variable is constant.', 'It indicates that a method can be accessed without creating an instance of the class.', 'It indicates that a class cannot be extended.', 'It indicates that a variable is of primitive type.', 'What does the "static" keyword mean in Java?', 'It indicates that a method can be accessed without creating an instance of the class.'),
('Java', 'Easy', 'constant int x = 5;', 'final int x = 5;', 'static int x = 5;', 'readonly int x = 5;', 'What is the correct way to declare a constant variable in Java?', 'final int x = 5;'),
('Java', 'Easy', 'for loop', 'while loop', 'do-while loop', 'switch loop', 'Which loop in Java allows the code to be executed at least once?', 'do-while loop'),
('Java', 'Easy', 'To terminate a loop or switch statement and transfer control to the next statement.', 'To skip the rest code in a loop and move to the next iteration.', 'To define a label for a loop or switch statement.', 'To check a condition and execute a block of code repeatedly.', 'What is the purpose of the "break" statement in Java?', 'To terminate a loop or switch statement and transfer control to the next statement.'),
('Java', 'Easy', '+', '-', '*', '/', 'Which Java operator is used to concatenate two strings?', '+'),
('Java', 'Easy', 'HashMap', 'ArrayList', 'LinkedList', 'HashSet', 'In Java, which collection class provides an implementation of a dynamic array?', 'ArrayList'),
('Python', 'Easy', 'count()', 'size()', 'length()', 'len()', 'Which Python function is used to calculate the length of a list?', 'len()'),
('Python', 'Easy', '[1,2,3]', '[1,2,3,4]', '[4,3,2,1]', 'Error', 'What is the output of the following Python code snippet?', '[1,2,3,4]'),
('Python', 'Easy', 'break', 'continue', 'pass', 'return', 'Which Python statement is used to exut from a loop prematurely?', 'break'),
('Python', 'Easy', 'To generate a random number within a given range.', 'To iterate over a sequence of numbers.', 'To sort a list in ascending order.', 'To calculate the length of a string.', 'What is the purpose of the "range()" function in Python?', 'To iterate over a sequence of numbers.'),
('Python', 'Easy', 'int', 'float', 'str', 'list', 'In Python, which data type is mutable?', 'list'),
('Python', 'Easy', 'datetime', 'math', 'os', 'sys', 'Which Python module is used for working with dates and times?', 'datetime')
;

CREATE TABLE IF NOT EXISTS quiz (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS quiz_questions (
    quiz_id INT NOT NULL,
    questions_id INT NOT NULL,
    PRIMARY KEY (quiz_id, questions_id),
    FOREIGN KEY (quiz_id)
        REFERENCES quiz (id),
    FOREIGN KEY (questions_id)
        REFERENCES question (id)
);