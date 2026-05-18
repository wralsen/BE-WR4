# FOR TESTING

DROP TABLE IF EXISTS book_author;
DROP TABLE IF EXISTS author;
DROP TABLE IF EXISTS quote;
DROP TABLE IF EXISTS book;

# CREATE TABLES
CREATE TABLE book(
 book_id INTEGER PRIMARY KEY,
 title VARCHAR(30),
 edition INTEGER,
 published_year INTEGER
);
 
CREATE TABLE author(
 author_id INTEGER PRIMARY KEY,
 name VARCHAR(30),
 born_year INTEGER,
 dead_year INTEGER
);

CREATE TABLE book_author(
 book_id INTEGER NOT NULL,
 author_id INTEGER NOT NULL,
CONSTRAINT book_author_pk PRIMARY KEY(book_id,author_id),
CONSTRAINT book_author_fk1 FOREIGN KEY(book_id) REFERENCES book(book_id),
CONSTRAINT book_author_fk2 FOREIGN KEY(author_id) REFERENCES author(author_id)
);

CREATE TABLE quote(
 quote_id INTEGER PRIMARY KEY,
 quote VARCHAR(255),
 book_id INTEGER NOT NULL,
 CONSTRAINT quote_book_fk FOREIGN KEY(book_id) REFERENCES book(book_id)
);