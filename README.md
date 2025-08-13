**Book Exchange Club** - **SQL Project**

📌 **Introduction:**

The Book Exchange Club project is a SQL-based database system designed to manage a community of members who share books with one another. It keeps track of members, books available in the club, and book exchanges between members.

✨ **Features**

- Manage members with details like name, email, phone, and join date.
- Store information about books including title, author, genre, and availability.
- Track book exchanges between members with exchange date and return date.
- Example queries for viewing, inserting, and updating records.

🗂 **Database Schema**

The project contains three main tables:

1. **members** - Stores information about members.
   - member_id (INT, Primary Key)
   - name (VARCHAR)
   - email (VARCHAR)
   - phone (VARCHAR)
   - join_date (DATE)

2. **books** - Stores details about the books.
   - book_id (INT, Primary Key)
   - title (VARCHAR)
   - author (VARCHAR)
   - genre (VARCHAR)
   - added_date (DATE)
   - available (BOOLEAN)

3. **exchanges** - Tracks book borrow/return records.
   - exchange_id (INT, Primary Key)
   - title (VARCHAR)
   - lender (VARCHAR)
   - borrower (VARCHAR)
   - exchange_date (DATE)
   - return_date (DATE, Nullable)

⚙ **Installation & Setup**

1. Install MySQL on your system.
2. Clone the project repository from GitHub.
3. Open the project folder in your terminal or PowerShell.
4. Run the PowerShell script to set up the database:
   ```powershell
   powershell -ExecutionPolicy Bypass -File .\run-sql.ps1
   ```
5. This will create the database, import the schema, insert sample data, and run queries.

📖 **Usage**

After setting up the database, you can:
- View all members, books, and exchanges.
- Add new members or books.
- Record new exchanges.
- Update return dates when books are returned.

💻 **Example SQL Queries**

```sql
-- View all members
SELECT * FROM members;

-- View all books
SELECT * FROM books;

-- View all exchanges
SELECT * FROM exchanges;

-- Add a new member
INSERT INTO members (name, email, phone, join_date) VALUES ('John Doe', 'john@example.com', '9876543211', CURDATE());

-- Add a new book
INSERT INTO books (title, author, genre, added_date, available) VALUES ('New Book', 'Author Name', 'Genre', CURDATE(), 1);

-- Record a new exchange
INSERT INTO exchanges (title, lender, borrower, exchange_date, return_date) VALUES ('The Great Gatsby', 'Alice Johnson', 'John Doe', CURDATE(), NULL);
```
