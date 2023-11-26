CREATE TABLE Books (
  booknum int NOT NULL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  Edition VARCHAR(255) NOT NULL,
  Category VARCHAR(255) NOT NULL, 
  price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Readers (
  reader_id INT NOT NULL PRIMARY KEY,
  fname VARCHAR(255) NOT NULL, sname VARCHAR(255) NOT NULL, 
  email VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL
);

CREATE TABLE Report (
  report_no INT NOT NULL PRIMARY KEY,
  reader_id INT NOT NULL,
  Book_no int NOT NULL,
  Issued_date DATE NOT NULL,
  due_date DATE NOT NULL,
  return_date DATE NULL,
  FOREIGN KEY (reader_id) REFERENCES Readers(reader_id),
  FOREIGN KEY (book_no) REFERENCES Books(booknum)
);

CREATE TABLE Staff (
  staff_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL
);
