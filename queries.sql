# list all books and the number of quotes for each
SELECT title AS [Book title], COUNT(quote_id) AS [Number of quotes]
FROM book LEFT JOIN quote
ON book.book_id = quote.book_id
GROUP BY title;

# list all authors and the number of quotes for each
SELECT name AS [Author name], COUNT(quote_id) AS [Number of quotes]
FROM (book NATURAL JOIN book_author NATURAL JOIN author) LEFT JOIN quote
ON book.book_id = quote.book_id
GROUP BY name;

# lists all quotes from a specific book, including the quote text and the author's name
SELECT title AS [Book Title], quote AS [Quote], name AS [Author name]
FROM book NATURAL JOIN book_author NATURAL JOIN author NATURAL JOIN quote
WHERE book_id=4;

# lists all quotes from a specific author, including the quote text and the book title
SELECT name AS [Author name], quote AS [Quote], title AS [Book title]
FROM book NATURAL JOIN book_author NATURAL JOIN author NATURAL JOIN quote
WHERE author_id=5;
