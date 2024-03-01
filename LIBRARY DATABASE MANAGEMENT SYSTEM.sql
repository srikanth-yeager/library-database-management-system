# Create a Database called 'sriproject' 
CREATE DATABASE project;
USE project;

# create table "Branch"
CREATE TABLE Branch
(
Branch_no VARCHAR(10) PRIMARY KEY,
Manager_id VARCHAR(10),
Branch_address VARCHAR(30),
Contact_no VARCHAR(15)
);
DESC branch;

# Create table "Employee"
CREATE TABLE Employee
(
Emp_id VARCHAR(10) PRIMARY KEY,
Emp_name VARCHAR(30),
Position VARCHAR(30),
Salary DECIMAL(10,2)
);
DESC employee;

# Create table "Customer"
CREATE TABLE Customer
(
Customer_Id VARCHAR(10) PRIMARY KEY,
Customer_name VARCHAR(30),
Customer_address VARCHAR(30),
Reg_date DATE
);
DESC customer;

# Create table "IssueStatus"
CREATE TABLE IssueStatus
(
Issue_Id VARCHAR(10) PRIMARY KEY,
Customer_id VARCHAR(30),
Issue_date DATE,
ISBN VARCHAR(30)
);
drop table issuestatus;
DESC issuestatus;
ALTER TABLE issuestatus MODIFY COLUMN Issued_book_name VARCHAR(80);
ALTER TABLE issuestatus MODIFY COLUMN Isbn_book VARCHAR(25);

# Create table "ReturnStatus"
CREATE TABLE ReturnStatus
(
Return_id VARCHAR(10) PRIMARY KEY,
Customer_id VARCHAR(30),
Return_date DATE,
ISBN VARCHAR(30)
);
drop table ReturnStatus;
DESC returnstatus;
ALTER TABLE returnstatus MODIFY COLUMN Return_book_name VARCHAR(100);
ALTER TABLE returnstatus MODIFY COLUMN isbn_book2 VARCHAR(25);

# Create table "Books"
CREATE TABLE Books
(
ISBN VARCHAR(30) PRIMARY KEY,
Book_title VARCHAR(100),
Category VARCHAR(30),
Rental_Price DECIMAL(10,2),
Status ENUM('Yes','No'),
Author VARCHAR(30),
Publisher VARCHAR(30)
);
drop table books;
DESC Books;
alter TABLE books MODIFY COLUMN ISBN VARCHAR(25);
alter TABLE books MODIFY COLUMN Book_title VARCHAR(80);

SHOW TABLES;

# Insert values into each tables
INSERT INTO branch VALUES
('B001', 'M101', '123 Main St', '+919099988676'),
('B002', 'M102', '456 Elm St', '+919099988677'),
('B003', 'M103', '789 Oak St', '+919099988678'),
('B004', 'M104', '567 Pine St', '+919099988679'),
('B005', 'M105', '890 Maple St', '+919099988680'),
('B006', 'M106', '234 Cedar St', '+919099988681'),
('B007', 'M107', '901 Walnut St', '+919099988682'),
('B008', 'M108', '345 Birch St', '+919099988683'),
('B009', 'M109', '678 Sycamore St', '+919099988684'),
('B010', 'M110', '123 Willow St', '+919099988685'),
('B011', 'M111', '456 Pineapple St', '+919099988686'),
('B012', 'M112', '789 Peach St', '+919099988687'),
('B013', 'M113', '890 Cherry St', '+919099988688'),
('B014', 'M114', '234 Grape St', '+919099988689'),
('B015', 'M115', '901 Banana St', '+919099988690');

SELECT * FROM branch;

INSERT INTO employee VALUES
('E101', 'John Doe', 'Manager', 60000.00),
('E102', 'Jane Smith', 'Clerk', 45000.00),
('E103', 'Mike Johnson', 'Librarian', 55000.00),
('E104', 'Emily Davis', 'Assistant', 40000.00),
('E105', 'Sarah Brown', 'Assistant', 42000.00),
('E106', 'Michelle Ramirez', 'Assistant', 43000.00),
('E107', 'Michael Thompson', 'Manager', 62000.00),
('E108', 'Jessica Taylor', 'Clerk', 46000.00),
('E109', 'Daniel Anderson', 'Librarian', 57000.00),
('E110', 'Laura Martinez', 'Assistant', 41000.00),
('E111', 'Christopher Lee', 'Manager', 65000.00),
('E112', 'Amanda Wilson', 'Clerk', 47000.00),
('E113', 'Robert Garcia', 'Librarian', 58000.00),
('E114', 'Jennifer Hernandez', 'Assistant', 43000.00),
('E115', 'David Martinez', 'Manager', 67000.00),
('E116', 'Stephanie Nguyen', 'Clerk', 48000.00),
('E117', 'Matthew Kim', 'Librarian', 59000.00),
('E118', 'Emma Rodriguez', 'Assistant', 44000.00),
('E119', 'Kevin Nguyen', 'Manager', 68000.00),
('E120', 'Olivia Lopez', 'Clerk', 49000.00),
('E121', 'Justin Smith', 'Librarian', 60000.00),
('E122', 'Hannah Baker', 'Manager', 69000.00),
('E123', 'Alexander Brown', 'Clerk', 50000.00),
('E124', 'Victoria Garcia', 'Librarian', 61000.00),
('E125', 'Nathan Rodriguez', 'Assistant', 45000.00),
('E126', 'Ella Nguyen', 'Manager', 70000.00),
('E127', 'Gabriel Martinez', 'Clerk', 51000.00),
('E128', 'Madison Kim', 'Librarian', 62000.00),
('E129', 'Dylan Lopez', 'Assistant', 46000.00),
('E130', 'Grace Lee', 'Manager', 71000.00),
('E131', 'Brandon Smith', 'Clerk', 52000.00);


SELECT * FROM employee;

INSERT INTO customer VALUES
('C101', 'Alice Johnson', '123 Main St', '2021-05-15'),
('C102', 'Bob Smith', '456 Elm St', '2021-06-20'),
('C103', 'Carol Davis', '789 Oak St', '2021-07-10'),
('C104', 'Dave Wilson', '567 Pine St', '2021-08-05'),
('C105', 'Eve Brown', '890 Maple St', '2021-09-25'),
('C106', 'Frank Thomas', '234 Cedar St', '2021-10-15'),
('C107', 'Grace Taylor', '345 Walnut St', '2021-11-20'),
('C108', 'Henry Anderson', '456 Birch St', '2021-12-10'),
('C109', 'Ivy Martinez', '567 Oak St', '2022-01-05'),
('C110', 'Jack Wilson', '678 Pine St', '2022-02-25'),
('C111', 'Kate Thompson', '789 Cedar St', '2022-03-15'),
('C112', 'Liam Harris', '890 Apple St', '2022-04-20'),
('C113', 'Mia Clark', '901 Orange St', '2022-05-10'),
('C114', 'Noah Turner', '123 Banana St', '2022-06-05'),
('C115', 'Olivia Phillips', '234 Peach St', '2022-07-25'),
('C116', 'Patrick Walker', '345 Grape St', '2022-08-15'),
('C117', 'Quinn Cooper', '456 Cherry St', '2022-09-20'),
('C118', 'Rachel King', '567 Lemon St', '2022-10-10'),
('C119', 'Samuel Roberts', '678 Lime St', '2022-11-05'),
('C120', 'Taylor White', '789 Plum St', '2022-12-25'),
('C121', 'Victoria Harris', '890 Strawberry St', '2023-01-15'),
('C122', 'William Turner', '901 Blueberry St', '2023-02-20'),
('C123', 'Xavier Clark', '123 Raspberry St', '2023-03-10'),
('C124', 'Yasmine Martinez', '234 Blackberry St', '2023-04-05'),
('C125', 'Zachary Phillips', '345 Cranberry St', '2023-05-25'),
('C126', 'Abigail Walker', '456 Kiwi St', '2023-06-15'),
('C127', 'Brian Cooper', '567 Mango St', '2023-07-20'),
('C128', 'Chloe King', '678 Papaya St', '2023-08-10'),
('C129', 'Daniel Roberts', '789 Avocado St', '2023-09-05'),
('C130', 'Emily White', '890 Watermelon St', '2023-10-25'),
('C131', 'Fiona Adams', '901 Pineapple St', '2023-11-15'),
('C132', 'George Baker', '123 Mango St', '2023-12-20'),
('C133', 'Hannah Carter', '234 Papaya St', '2024-01-10'),
('C134', 'Ian Davis', '345 Guava St', '2024-02-05'),
('C135', 'Julia Edwards', '456 Kiwi St', '2024-03-25'),
('C136', 'Kyle Fisher', '567 Lychee St', '2024-04-15'),
('C137', 'Lily Green', '678 Persimmon St', '2024-05-20'),
('C138', 'Max Harper', '789 Dragonfruit St', '2024-06-10'),
('C139', 'Nora Irwin', '890 Starfruit St', '2024-07-05'),
('C140', 'Oscar Jackson', '901 Durian St', '2024-08-25'),
('C141', 'Penelope Kennedy', '123 Passionfruit St', '2024-09-15'),
('C142', 'Quentin Lopez', '234 Raspberry St', '2024-10-20'),
('C143', 'Rebecca Morgan', '345 Blueberry St', '2024-11-10'),
('C144', 'Samantha Nelson', '456 Blackberry St', '2024-12-05'),
('C145', 'Theodore Oliver', '567 Cranberry St', '2025-01-25'),
('C146', 'Ursula Patel', '678 Apple St', '2025-02-15'),
('C147', 'Vincent Quinn', '789 Orange St', '2025-03-20'),
('C148', 'Wendy Rivera', '890 Pear St', '2025-04-10'),
('C149', 'Xavier Stewart', '901 Plum St', '2025-05-05'),
('C150', 'Yvonne Thomas', '123 Cherry St', '2025-06-25');

SELECT * FROM customer;

INSERT INTO books VALUES
('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 7.00, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-330-25864-8', 'Animal Farm', 'Classic', 5.50, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literary Fiction', 6.50, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'),
('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 8.00, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-141-44171-6', 'Jane Eyre', 'Classic', 4.00, 'yes', 'Charlotte Bronte', 'Penguin Classics'),
('978-0-307-37840-1', 'The Alchemist', 'Fiction', 2.50, 'yes', 'Paulo Coelho', 'HarperOne'),
('978-0-679-76489-8', "Harry Potter and the Sorcerer's Stone", 'Fantasy', 7.00, 'yes', 'J.K. Rowling', 'Scholastic'),
('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 8.00, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 7.50, 'yes', 'George R.R. Martin', 'Bantam'),
('978-0-393-05081-8', "A People's History of the United States", 'History', 9.00, 'yes', 'Howard Zinn', 'Harper Perennial'),
('978-0-19-280551-1', 'The Guns of August', 'History', 7.00, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'),
('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 8.00, 'yes', 'Yuval Noah Harari', 'Harper Perennial'),
('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 6.50, 'yes', 'Anne Frank', 'Bantam'),
('978-0-14-044930-3', 'The Histories', 'History', 5.50, 'yes', 'Herodotus', 'Penguin Classics'),
('978-0-393-91257-8', 'Guns, Germs, and Steel: The Fates of Human Societies', 'History', 7.00, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
('978-0-7432-7357-1', '1491: New Revelations of the Americas Before Columbus', 'History', 6.50, 'yes', 'Charles C. Mann', 'Vintage Books'),
('978-0-06-112008-4', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'HarperCollins'),
('978-0-312-42689-5', '1984', 'Classic', 7.50, 'yes', 'George Orwell', 'Signet Classics'),
('978-0-345-53981-0', 'Brave New World', 'Classic', 6.50, 'yes', 'Aldous Huxley', 'Harper Perennial'),
('978-0-385-53291-7', 'Pride and Prejudice', 'Classic', 5.00, 'yes', 'Jane Austen', 'Bantam Classics'),
('978-0-399-56366-6', 'The Hobbit', 'Fantasy', 9.00, 'yes', 'J.R.R. Tolkien', 'Mariner Books'),
('978-0-439-02348-3', 'The Fellowship of the Ring', 'Fantasy', 8.50, 'yes', 'J.R.R. Tolkien', 'Houghton Mifflin'),
('978-0-446-31074-7', 'The Two Towers', 'Fantasy', 8.50, 'yes', 'J.R.R. Tolkien', 'Houghton Mifflin'),
('978-0-618-25723-1', 'The Return of the King', 'Fantasy', 8.50, 'yes', 'J.R.R. Tolkien', 'Houghton Mifflin'),
('978-0-451-17287-6', 'The Road', 'Fiction', 7.00, 'yes', 'Cormac McCarthy', 'Vintage'),
('978-0-307-74005-8', 'The Martian', 'Science Fiction', 9.50, 'yes', 'Andy Weir', 'Crown'),
('978-0-312-35719-4', 'Jurassic Park', 'Science Fiction', 8.00, 'yes', 'Michael Crichton', 'Ballantine Books'),
('978-0-345-34995-5', 'Dune', 'Science Fiction', 10.00, 'yes', 'Frank Herbert', 'Ace Books'),
('978-0-140-45610-0', 'The Picture of Dorian Gray', 'Classic', 6.50, 'yes', 'Oscar Wilde', 'Penguin Classics'),
('978-0-553-21052-4', 'Lord of the Flies', 'Classic', 5.50, 'yes', 'William Golding', 'Perigee'),
('978-0-141-18353-3', 'Wuthering Heights', 'Classic', 4.50, 'yes', 'Emily Brontë', 'Penguin Classics'),
('978-0-440-33943-7', 'The Count of Monte Cristo', 'Classic', 8.50, 'yes', 'Alexandre Dumas', 'Bantam Classics'),
('978-0-141-40119-9', 'Moby-Dick', 'Classic', 7.00, 'yes', 'Herman Melville', 'Penguin Classics'),
('978-0-140-45055-9', 'The Odyssey', 'Classic', 5.00, 'yes', 'Homer', 'Penguin Classics'),
('978-0-679-78411-7', 'The Road Less Traveled', 'Psychology', 9.00, 'yes', 'M. Scott Peck', 'Touchstone'),
('978-0-06-256572-2', 'Thinking, Fast and Slow', 'Psychology', 11.00, 'yes', 'Daniel Kahneman', 'Farrar, Straus and Giroux'),
('978-0-06-112426-6', 'Quiet: The Power of Introverts in a World That Cant Stop Talking', 'Psychology', 10.00, 'yes', 'Susan Cain', 'Broadway Books'),
('978-0-14-312774-1', 'Blink: The Power of Thinking Without Thinking', 'Psychology', 8.00, 'yes', 'Malcolm Gladwell', 'Penguin Books'),
('978-0-374-52800-5', 'Drive: The Surprising Truth About What Motivates Us', 'Psychology', 10.50, 'yes', 'Daniel H. Pink', 'Riverhead Books'),
('978-0-671-45241-5', 'Mans Search for Meaning', 'Psychology', 9.50, 'yes', 'Viktor E. Frankl', 'Beacon Press'),
('978-0-14-243720-9', 'The Brothers Karamazov', 'Classic', 12.00, 'yes', 'Fyodor Dostoevsky', 'Penguin Classics'),
('978-0-14-044917-4', 'Crime and Punishment', 'Classic', 9.00, 'yes', 'Fyodor Dostoevsky', 'Penguin Classics'),
('978-0-553-21311-2', 'Anna Karenina', 'Classic', 11.00, 'yes', 'Leo Tolstoy', 'Bantam Classics'),
('978-0-14-044333-2', 'War and Peace', 'Classic', 14.00, 'yes', 'Leo Tolstoy', 'Penguin Classics'),
('978-0-553-21114-9', 'The Idiot', 'Classic', 10.00, 'yes', 'Fyodor Dostoevsky', 'Bantam Classics'),
('978-0-8041-3047-2', 'The Sun Also Rises', 'Classic', 8.00, 'yes', 'Ernest Hemingway', 'Scribner'),
('978-0-14-028019-7', 'The Old Man and the Sea', 'Classic', 7.50, 'yes', 'Ernest Hemingway', 'Scribner'),
('978-0-140-17704-6', 'The Sound and the Fury', 'Classic', 9.00, 'yes', 'William Faulkner', 'Penguin Classics'),
('978-0-14-118255-1', 'In Search of Lost Time', 'Classic', 15.00, 'yes', 'Marcel Proust', 'Penguin Classics'),
('978-0-141-19173-9', 'Don Quixote', 'Classic', 13.00, 'yes', 'Miguel de Cervantes', 'Penguin Classics'),
('978-0-345-46589-5', 'The Divine Comedy', 'Classic', 11.00, 'yes', 'Dante Alighieri', 'Bantam Classics'),
('978-0-06-112241-5', 'Fahrenheit 451', 'Classic', 8.00, 'yes', 'Ray Bradbury', 'Simon & Schuster'),
('978-0-7653-3149-9', 'The Name of the Wind', 'Fantasy', 10.00, 'yes', 'Patrick Rothfuss', 'DAW Books'),
('978-0-441-01249-6', 'The Lies of Locke Lamora', 'Fantasy', 9.00, 'yes', 'Scott Lynch', 'Bantam Spectra'),
('978-0-316-05653-7', 'Mistborn: The Final Empire', 'Fantasy', 11.00, 'yes', 'Brandon Sanderson', 'Tor Books'),
('978-0-575-08413-1', 'American Gods', 'Fantasy', 9.50, 'yes', 'Neil Gaiman', 'Headline'),
('978-0-316-07710-3', 'The Blade Itself', 'Fantasy', 10.50, 'yes', 'Joe Abercrombie', 'Gollancz'),
('978-0-345-53047-6', 'The Final Empire', 'Fantasy', 10.00, 'yes', 'Brandon Sanderson', 'Tor Books'),
('978-0-312-85785-2', 'The Eye of the World', 'Fantasy', 9.50, 'yes', 'Robert Jordan', 'Tor Books'),
('978-0-06-231006-4', 'The Way of Kings', 'Fantasy', 12.00, 'yes', 'Brandon Sanderson', 'Tor Books'),
('978-0-553-57340-0', 'A Game of Thrones', 'Fantasy', 11.00, 'yes', 'George R.R. Martin', 'Bantam'),
('978-0-575-09204-4', 'The Wise Man\'s Fear', 'Fantasy', 10.50, 'yes', 'Patrick Rothfuss', 'DAW Books'),
('978-0-312-84870-8', 'The Night Circus', 'Fantasy', 9.00, 'yes', 'Erin Morgenstern', 'Anchor'),
('978-0-316-13497-2', 'Neverwhere', 'Fantasy', 8.50, 'yes', 'Neil Gaiman', 'William Morrow Paperbacks'),
('978-0-441-01981-5', 'Elantris', 'Fantasy', 10.00, 'yes', 'Brandon Sanderson', 'Tor Books'),
('978-0-7653-1679-9', 'The Lies of Locke Lamora', 'Fantasy', 11.00, 'yes', 'Scott Lynch', 'Bantam Spectra'),
('978-0-441-01167-3', 'Mistborn: The Final Empire', 'Fantasy', 12.00, 'yes', 'Brandon Sanderson', 'Tor Books'),
('978-0-7653-2256-1', 'The Name of the Wind', 'Fantasy', 13.00, 'yes', 'Patrick Rothfuss', 'DAW Books'),
('978-0-7653-2190-8', 'The Wise Man\'s Fear', 'Fantasy', 14.00, 'yes', 'Patrick Rothfuss', 'DAW Books'),
('978-0-06-083757-0', 'American Gods', 'Fantasy', 11.00, 'yes', 'Neil Gaiman', 'William Morrow Paperbacks'),
('978-0-575-08923-2', 'The Way of Kings', 'Fantasy', 15.00, 'yes', 'Brandon Sanderson', 'Gollancz'),
('978-0-7653-1699-7', 'The Final Empire', 'Fantasy', 10.50, 'yes', 'Brandon Sanderson', 'Tor Books'),
('978-0-8129-7813-7', 'The Blade Itself', 'Fantasy', 12.00, 'yes', 'Joe Abercrombie', 'Orbit');

UPDATE books
SET rental_price = rental_price * 10;
set sql_safe_updates=0;

SELECT * FROM books;

UPDATE books SET status = 'No' WHERE isbn in ('978-0-307-58837-1','978-0-141-44171-6','978-0-7432-7357-1');




INSERT INTO IssueStatus VALUES
('IS101', 'C101', '2023-05-01', '978-0-553-29698-2'),
('IS102', 'C102', '2023-05-02', '978-0-7432-4722-4'),
('IS103', 'C103', '2023-05-03', '978-0-7432-7357-1'),
('IS104', 'C104', '2023-05-04', '978-0-307-58837-1'),
('IS105', 'C105', '2023-05-05', '978-0-375-41398-8'),
('IS106', 'C106', '2023-05-06', '978-0-06-112008-4'),
('IS107', 'C107', '2023-05-07', '978-0-312-42689-5'),
('IS108', 'C108', '2023-05-08', '978-0-345-53981-0'),
('IS109', 'C109', '2023-05-09', '978-0-385-53291-7'),
('IS110', 'C110', '2023-05-10', '978-0-399-56366-6'),
('IS111', 'C111', '2023-05-11', '978-0-439-02348-3'),
('IS112', 'C112', '2023-05-12', '978-0-446-31074-7'),
('IS113', 'C113', '2023-05-13', '978-0-618-25723-1'),
('IS114', 'C114', '2023-05-14', '978-0-307-74005-8'),
('IS115', 'C115', '2023-05-15', '978-0-312-35719-4'),
('IS116', 'C116', '2023-05-16', '978-0-345-34995-5'),
('IS117', 'C117', '2023-05-17', '978-0-312-42689-5'),
('IS118', 'C118', '2023-05-18', '978-0-525-47535-5'),
('IS119', 'C119', '2023-05-19', '978-0-06-112008-4'),
('IS120', 'C120', '2023-05-20', '978-0-399-56366-6'),
('IS121', 'C121', '2023-05-21', '978-0-307-74005-8'),
('IS122', 'C122', '2023-05-22', '978-0-312-35719-4'),
('IS123', 'C123', '2023-05-23', '978-0-446-31074-7'),
('IS124', 'C124', '2023-05-24', '978-0-014-028019-7'),
('IS125', 'C125', '2023-05-25', '978-0-575-08413-1'),
('IS126', 'C126', '2023-05-26', '978-0-441-01249-6'),
('IS127', 'C127', '2023-05-27', '978-0-575-09204-4'),
('IS128', 'C128', '2023-05-28', '978-0-679-78411-7'),
('IS129', 'C129', '2023-05-29', '978-0-006-256572-2'),
('IS130', 'C130', '2023-05-30', '978-0-006-112426-6'),
('IS131', 'C131', '2023-06-01', '978-0-014-312774-1'),
('IS132', 'C132', '2023-06-02', '978-0-374-52800-5'),
('IS133', 'C133', '2023-06-03', '978-0-671-45241-5'),
('IS134', 'C134', '2023-06-04', '978-0-014-243720-9'),
('IS135', 'C135', '2023-06-05', '978-0-014-044917-4'),
('IS136', 'C136', '2023-06-06', '978-0-8041-3047-2'),
('IS137', 'C137', '2023-06-07', '978-0-014-028019-7'),
('IS138', 'C138', '2023-06-08', '978-0-140-17704-6'),
('IS139', 'C139', '2023-06-09', '978-0-014-118255-1'),
('IS140', 'C140', '2023-06-10', '978-0-141-19173-9'),
('IS141', 'C141', '2023-06-11', '978-0-014-044333-2'),
('IS142', 'C142', '2023-06-12', '978-0-553-21114-9'),
('IS143', 'C143', '2023-06-13', '978-0-7653-3149-9'),
('IS144', 'C144', '2023-06-14', '978-0-441-01249-6'),
('IS145', 'C145', '2023-06-15', '978-0-316-05653-7'),
('IS146', 'C146', '2023-06-16', '978-0-575-09204-4'),
('IS147', 'C147', '2023-06-17', '978-0-307-74005-8'),
('IS148', 'C148', '2023-06-18', '978-0-316-07710-3'),
('IS149', 'C149', '2023-06-19', '978-0-006-112008-4'),
('IS150', 'C150', '2023-06-20', '978-0-330-25864-8'),
('IS151', 'C110', '2023-06-21', '978-0-014-243720-9'),
('IS152', 'C125', '2023-06-22', '978-0-345-53981-0'),
('IS153', 'C139', '2023-06-23', '978-0-307-74005-8'),
('IS154', 'C145', '2023-06-24', '978-0-312-42689-5'),
('IS155', 'C150', '2023-06-25', '978-0-316-05653-7'),
('IS156', 'C101', '2023-06-26', '978-0-330-25864-8'),
('IS157', 'C102', '2023-06-27', '978-0-14-118776-1'),
('IS158', 'C103', '2023-06-28', '978-0-141-44171-6'),
('IS159', 'C104', '2023-06-29', '978-0-307-37840-1'),
('IS160', 'C105', '2023-06-30', '978-0-679-76489-8'),
('IS161', 'C106', '2023-07-01', '978-0-7432-4722-4'),
('IS162', 'C107', '2023-07-02', '978-0-009957807-9'),
('IS163', 'C108', '2023-07-03', '978-0-393-05081-8'),
('IS164', 'C109', '2023-07-04', '978-0-019280551-1'),
('IS165', 'C110', '2023-07-05', '978-0-307-58837-1'),
('IS166', 'C111', '2023-07-06', '978-0-375-41398-8'),
('IS167', 'C112', '2023-07-07', '978-0-014044930-3'),
('IS168', 'C113', '2023-07-08', '978-0-393-91257-8'),
('IS169', 'C114', '2023-07-09', '978-0-7432-7357-1'),
('IS170', 'C115', '2023-07-10', '978-0-006112008-4'),
('IS171', 'C116', '2023-07-11', '978-0-312-42689-5'),
('IS172', 'C117', '2023-07-12', '978-0-345-53981-0'),
('IS173', 'C118', '2023-07-13', '978-0-385-53291-7'),
('IS174', 'C119', '2023-07-14', '978-0-399-56366-6'),
('IS175', 'C120', '2023-07-15', '978-0-439-02348-3'),
('IS176', 'C121', '2023-07-16', '978-0-446-31074-7'),
('IS177', 'C122', '2023-07-17', '978-0-618-25723-1'),
('IS178', 'C123', '2023-07-18', '978-0-451-17287-6'),
('IS179', 'C124', '2023-07-19', '978-0-307-74005-8'),
('IS180', 'C125', '2023-07-20', '978-0-312-35719-4'),
('IS181', 'C126', '2023-07-21', '978-0-345-34995-5'),
('IS182', 'C127', '2023-07-22', '978-0-140-45610-0'),
('IS183', 'C128', '2023-07-23', '978-0-553-21052-4'),
('IS184', 'C129', '2023-07-24', '978-0-141-18353-3'),
('IS185', 'C130', '2023-07-25', '978-0-440-33943-7'),
('IS186', 'C131', '2023-07-26', '978-0-14-141019-9'),
('IS187', 'C132', '2023-07-27', '978-0-140-45055-9'),
('IS188', 'C133', '2023-07-28', '978-0-679-78411-7'),
('IS189', 'C134', '2023-07-29', '978-0-006256572-2'),
('IS190', 'C135', '2023-07-30', '978-0-006112426-6'),
('IS191', 'C136', '2023-07-31', '978-0-014312774-1'),
('IS192', 'C137', '2023-08-01', '978-0-374-52800-5'),
('IS193', 'C138', '2023-08-02', '978-0-671-45241-5'),
('IS194', 'C139', '2023-08-03', '978-0-014243720-9'),
('IS195', 'C140', '2023-08-04', '978-0-014044917-4'),
('IS196', 'C141', '2023-08-05', '978-0-553-21311-2'),
('IS197', 'C142', '2023-08-06', '978-0-014044333-2'),
('IS198', 'C143', '2023-08-07', '978-0-553-21114-9'),
('IS199', 'C144', '2023-08-08', '978-0-8041-3047-2'),
('IS200', 'C145', '2023-08-09', '978-0-014028019-7'),
('IS201', 'C146', '2023-08-10', '978-0-14017704-6'),
('IS202', 'C147', '2023-08-11', '978-0-014118255-1'),
('IS203', 'C148', '2023-08-12', '978-0-14119173-9'),
('IS204', 'C149', '2023-08-13', '978-0-34546589-5'),
('IS205', 'C150', '2023-08-14', '978-0-006112241-5');


SELECT * FROM issuestatus;

INSERT INTO ReturnStatus VALUES
('RS101', 'C101','2023-06-06', '978-0-553-29698-2'),
('RS102', 'C102','2023-06-07', '978-0-7432-4722-4'),
('RS103', 'C105','2023-06-08', '978-0-375-41398-8'),
('RS104', 'C108','2023-06-09', '978-0-14-044930-3'),
('RS105', 'C110','2023-06-10', '978-0-09-957807-9'),
('RS106', 'C103', '2023-06-11', '978-0-7432-7357-1'),
('RS107', 'C104', '2023-06-12', '978-0-307-58837-1'),
('RS108', 'C106', '2023-06-13', '978-0-06-112008-4'),
('RS109', 'C107', '2023-06-14', '978-0-312-42689-5'),
('RS110', 'C109', '2023-06-15', '978-0-385-53291-7'),
('RS111', 'C111', '2023-06-16', '978-0-399-56366-6'),
('RS112', 'C112', '2023-06-17', '978-0-439-02348-3'),
('RS113', 'C113', '2023-06-18', '978-0-446-31074-7'),
('RS114', 'C114', '2023-06-19', '978-0-618-25723-1'),
('RS115', 'C115', '2023-06-20', '978-0-307-74005-8'),
('RS116', 'C116', '2023-06-21', '978-0-312-35719-4'),
('RS117', 'C117', '2023-06-22', '978-0-345-53981-0'),
('RS118', 'C118', '2023-06-23', '978-0-525-47535-5'),
('RS119', 'C119', '2023-06-24', '978-0-006112008-4'),
('RS120', 'C120', '2023-06-25', '978-0-399-56366-6'),
('RS121', 'C121', '2023-06-26', '978-0-439-02348-3'),
('RS122', 'C122', '2023-06-27', '978-0-446-31074-7'),
('RS123', 'C123', '2023-06-28', '978-0-618-25723-1'),
('RS124', 'C124', '2023-06-29', '978-0-307-74005-8'),
('RS125', 'C125', '2023-06-30', '978-0-312-35719-4'),
('RS126', 'C126', '2023-07-01', '978-0-345-53981-0'),
('RS127', 'C127', '2023-07-02', '978-0-525-47535-5'),
('RS128', 'C128', '2023-07-03', '978-0-006112008-4'),
('RS129', 'C129', '2023-07-04', '978-0-399-56366-6'),
('RS130', 'C130', '2023-07-05', '978-0-439-02348-3'),
('RS131', 'C131', '2023-07-06', '978-0-446-31074-7'),
('RS132', 'C132', '2023-07-07', '978-0-014028019-7'),
('RS133', 'C133', '2023-07-08', '978-0-8041-3047-2'),
('RS134', 'C134', '2023-07-09', '978-0-014044333-2'),
('RS135', 'C135', '2023-07-10', '978-0-553-21114-9'),
('RS136', 'C136', '2023-07-11', '978-0-014044917-4'),
('RS137', 'C137', '2023-07-12', '978-0-553-21311-2'),
('RS138', 'C138', '2023-07-13', '978-0-014044930-3'),
('RS139', 'C139', '2023-07-14', '978-0-14017704-6'),
('RS140', 'C140', '2023-07-15', '978-0-014118255-1'),
('RS141', 'C141', '2023-07-16', '978-0-14119173-9'),
('RS142', 'C142', '2023-07-17', '978-0-34546589-5'),
('RS143', 'C143', '2023-07-18', '978-0-006112241-5'),
('RS144', 'C144', '2023-07-19', '978-0-553-29698-2'),
('RS145', 'C145', '2023-07-20', '978-0-7432-4722-4'),
('RS146', 'C146', '2023-07-21', '978-0-375-41398-8'),
('RS147', 'C147', '2023-07-22', '978-0-14-044930-3'),
('RS148', 'C148', '2023-07-23', '978-0-09-957807-9'),
('RS149', 'C149', '2023-07-24', '978-0-446-31074-7'),
('RS150', 'C150', '2023-07-25', '978-0-014028019-7'),
('RS151', 'C101', '2023-08-01', '978-0-14119173-9'),
('RS152', 'C102', '2023-08-02', '978-0-34546589-5'),
('RS153', 'C103', '2023-08-03', '978-0-006112241-5'),
('RS154', 'C104', '2023-08-04', '978-0-553-29698-2'),
('RS155', 'C105', '2023-08-05', '978-0-7432-4722-4'),
('RS156', 'C106', '2023-08-06', '978-0-375-41398-8'),
('RS157', 'C107', '2023-08-07', '978-0-14-044930-3'),
('RS158', 'C108', '2023-08-08', '978-0-09-957807-9'),
('RS159', 'C109', '2023-08-09', '978-0-446-31074-7'),
('RS160', 'C110', '2023-08-10', '978-0-014028019-7'),
('RS161', 'C111', '2023-08-11', '978-0-312-42689-5'),
('RS162', 'C112', '2023-08-12', '978-0-345-53981-0'),
('RS163', 'C113', '2023-08-13', '978-0-385-53291-7'),
('RS164', 'C114', '2023-08-14', '978-0-399-56366-6'),
('RS165', 'C115', '2023-08-15', '978-0-439-02348-3'),
('RS166', 'C116', '2023-08-16', '978-0-446-31074-7'),
('RS167', 'C117', '2023-08-17', '978-0-618-25723-1'),
('RS168', 'C118', '2023-08-18', '978-0-451-17287-6'),
('RS169', 'C119', '2023-08-19', '978-0-307-74005-8'),
('RS170', 'C120', '2023-08-20', '978-0-312-35719-4');
SELECT * FROM returnstatus;



/*Queries*/

# 1. Retrieve the book title, category, and rental price of all available books.
SELECT book_title, category, rental_price FROM books WHERE Status = 'Yes';

# 2. List the employee names and their respective salaries in descending order of salary.
SELECT emp_name, salary FROM employee ORDER BY Salary DESC;

# 3. Retrieve the book titles and the corresponding customers who have issued those books.
SELECT issuestatus.ISBN, customer.Customer_name FROM issuestatus INNER JOIN
customer on issuestatus.Customer_Id = customer.Customer_Id;

# 4. Display the total count of books in each category.
SELECT Category, COUNT(Book_title) FROM books GROUP BY Category;

# 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT emp_name, position FROM employee WHERE Salary > 50000;

# 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
SELECT customer_name FROM customer WHERE Reg_date < '2023-05-01' AND Customer_Id NOT IN
(SELECT Customer_Id FROM issuestatus);

# 7. Display the branch numbers and the total count of employees in each branch.
select count(employee) from  

UPDATE employee SET branch_no = 'B001' WHERE emp_id ='E101';
UPDATE employee SET branch_no = 'B001' WHERE emp_id ='E102';
UPDATE employee SET branch_no = 'B001' WHERE emp_id ='E103';
UPDATE employee SET branch_no = 'B001' WHERE emp_id ='E104';
UPDATE employee SET branch_no = 'B002' WHERE emp_id ='E105';
UPDATE employee SET branch_no = 'B003' WHERE emp_id ='E106';
UPDATE employee SET branch_no = 'B002' WHERE emp_id ='E107';
UPDATE employee SET branch_no = 'B002' WHERE emp_id ='E108';
UPDATE employee SET branch_no = 'B002' WHERE emp_id ='E109';
UPDATE employee SET branch_no = 'B004' WHERE emp_id ='E110';
UPDATE employee SET branch_no = 'B003' WHERE emp_id ='E111';

SELECT * FROM employee;

SELECT branch_no, COUNT(emp_id) FROM employee GROUP BY branch_no;

# 1. Retrieve the book title, category, and rental price of all available books.
SELECT book_title, category, rental_price FROM books WHERE Status = 'Yes';

# 2. List the employee names and their respective salaries in descending order of salary.
SELECT emp_name, salary FROM employee ORDER BY Salary DESC;

# 3. Retrieve the book titles and the corresponding customers who have issued those books.
SELECT issuestatus.Issued_book_name, customer.Customer_name FROM issuestatus INNER JOIN
customer on issuestatus.Issued_cust = customer.Customer_Id;

# 4. Display the total count of books in each category.
SELECT Category, COUNT(Book_title) FROM books GROUP BY Category;

# 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT emp_name, position FROM employee WHERE Salary > 50000;

# 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
SELECT customer_name FROM customer WHERE Reg_date < '2022-01-01' AND Customer_Id NOT IN
(SELECT issued_cust FROM issuestatus);

#7. Total revenue generated by rented books.
SELECT SUM(Books.Rental_Price) AS TotalRevenue
FROM IssueStatus  
INNER JOIN Books ON IssueStatus.ISBN = Books.ISBN;


# 8. Display the names of customers who have issued books in the month of June 2023.
SELECT customer.Customer_name FROM customer INNER JOIN issuestatus ON 
customer.Customer_Id = issuestatus.Customer_Id WHERE issuestatus.Issue_date >= '2023-06-01' AND 
issuestatus.Issue_date <= '2023-06-30';

# 9. Retrieve book_title from book table containing 'history'.
SELECT book_title FROM books WHERE Category = 'history';

# 10.Retrive top 3 most rented book categories.
SELECT Category, COUNT(*) AS Total_Rentals
FROM Books
INNER JOIN IssueStatus ON Books.ISBN = IssueStatus.ISBN
GROUP BY Category
ORDER BY Total_Rentals DESC
LIMIT 3;


# End


