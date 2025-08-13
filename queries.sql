SELECT * FROM books WHERE available = TRUE;

SELECT m.name, b.title, l.loan_date
FROM loans l
JOIN members m ON l.member_id = m.member_id
JOIN books b ON l.book_id = b.book_id
WHERE m.name = 'Alice Johnson';

SELECT m.name, b.title, l.loan_date
FROM loans l
JOIN members m ON l.member_id = m.member_id
JOIN books b ON l.book_id = b.book_id
WHERE l.return_date IS NULL AND l.loan_date < (CURDATE() - INTERVAL 30 DAY);
