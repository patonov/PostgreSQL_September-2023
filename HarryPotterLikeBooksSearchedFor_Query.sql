SELECT 
	b.title AS "Title"
FROM books AS b
WHERE b.title LIKE '%Harry Potter%'
ORDER BY b.id;

SELECT 
	a.first_name AS "Author"
FROM authors AS a
WHERE a.first_name LIKE '_gatha'
ORDER BY a.id;