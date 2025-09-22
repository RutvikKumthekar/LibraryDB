## Entities & Relationships

### Entities (Tables):

- Books

- Authors

- Members

- Loans

### Relationships:

- A book can have one or more authors (many-to-many)

- A member can borrow multiple books (one-to-many)

- A loan records the date a member borrowed and returned a book

## ER Diagram

### Labeled entities:

- Authors (AuthorID)

- Books (BookID)

- BookAuthors (BookID, AuthorID) ← Many-to-Many junction

- Members (MemberID)

- Loans (LoanID, BookID, MemberID)

<img width="1258" height="750" alt="image" src="https://github.com/user-attachments/assets/82e3906b-ec4f-47d5-b53e-a0a0f313ebfb" />
