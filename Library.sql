CREATE TABLE members(
member_id number(10,0),
name varchar2(20 char),
registration_date date,
phone_no varchar2(12 char),
CONSTRAINT members_pk PRIMARY KEY (member_id)
);

CREATE TABLE Books(
book_id number(10,0),
title varchar2(20 char),
publication_year number(4,0),
genre varchar2(10 char),
CONSTRAINT books_pk PRIMARY KEY (book_id)
);

CREATE TABLE authors(
author_id number(10,0),
name varchar2(20 char),
CONSTRAINT authors_pk PRIMARY KEY (author_id)
);

CREATE TABLE borrowing(
borrowing_id number(10,0),
book_id number(10,0), 
member_id  number(10,0),
borrowing_date date,
returned_date date,
CONSTRAINT borrowing_pk PRIMARY KEY(borrowing_id),
CONSTRAINT borrowing_fk FOREIGN KEY(book_id) REFERENCES books(book_id),
CONSTRAINT borrowing_2fk FOREIGN KEY(member_id) REFERENCES members(member_id));

ALTER TABLE Books
ADD (author_id number, CONSTRAINT books_fk 
FOREIGN KEY (author_id) REFERENCES authors(author_id));

SELECT * FROM members;
SELECT * FROM books;
SELECT * FROM authors;
SELECT * FROM borrowing;

INSERT INTO authors 
VALUES (734592,'Frank Herbert');
INSERT INTO authors 
VALUES (629392,'James Joyce');
INSERT INTO authors 
VALUES (274792,'George Orwell');
INSERT INTO authors 
VALUES (468729,'Carl Sagan');
INSERT INTO authors 
VALUES (710934,'Jane Austen');

ALTER TABLE books
MODIFY (genre varchar2(25));

INSERT INTO books
VALUES (92985,'Dune',1965,'Science Fiction',734592);
INSERT INTO books
VALUES (72859,'Pride and Prejudice',1813,'Romance',710934);
INSERT INTO books
VALUES (9283,'Cosmos',1980,'Science',468729);
INSERT INTO books
VALUES (99272,'Ulysses',1920,'Modernist Fiction',629392);
INSERT INTO books
VALUES (92785,'1984',1949,'Dystopian Fiction',274792);

INSERT INTO members
VALUES (1001,'M.Peter',TO_DATE('2024-01-01','YYYY-MM-DD'),'000582143972');
INSERT INTO members
VALUES (1002,'S.Sam',TO_DATE('2024-01-04','YYYY-MM-DD'),'098173602540');
INSERT INTO members
VALUES (1004,'A.Jhon',TO_DATE('2024-02-23','YYYY-MM-DD'),'000021948637');
INSERT INTO members
VALUES (1006,'R.Martin',TO_DATE('2024-03-09','YYYY-MM-DD'),'074159280361');

INSERT INTO borrowing
VALUES (82311,92985,1002,TO_DATE('2024-01-05','YYYY-MM-DD'),TO_DATE('2024-01-18','YYYY-MM-DD'));
INSERT INTO borrowing
VALUES (82041,92785,1004,TO_DATE('2024-02-25','YYYY-MM-DD'),TO_DATE('2024-03-07','YYYY-MM-DD'));
INSERT INTO borrowing
VALUES (83020,9283,1004,TO_DATE('2024-03-07','YYYY-MM-DD'),TO_DATE('2024-03-16','YYYY-MM-DD'));
INSERT INTO borrowing
VALUES (84012,92785,1006,TO_DATE('2024-03-08','YYYY-MM-DD'),TO_DATE('2024-03-19','YYYY-MM-DD'));
INSERT INTO borrowing
VALUES (84013,92985,1004,TO_DATE('2024-03-18','YYYY-MM-DD'),TO_DATE('2024-03-30','YYYY-MM-DD'));
INSERT INTO borrowing
VALUES (84910,72859,1002,TO_DATE('2024-01-19','YYYY-MM-DD'),TO_DATE('2024-02-14','YYYY-MM-DD'));


