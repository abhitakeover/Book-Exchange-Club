USE book_exchange_club;

INSERT INTO members (name, email, join_date) VALUES
('Alice Johnson', 'alice@example.com', '2024-01-10'),
('Bob Smith', 'bob@example.com', '2024-02-15'),
('Charlie Green', 'charlie@example.com', '2024-03-05');

INSERT INTO books (title, author, genre, available) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', TRUE),
('1984', 'George Orwell', 'Dystopian', TRUE),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', TRUE);

INSERT INTO loans (book_id, member_id, loan_date, return_date) VALUES
(1, 2, '2024-03-10', NULL),
(2, 1, '2024-03-15', '2024-04-01');
