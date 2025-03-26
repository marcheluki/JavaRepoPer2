CREATE TABLE MARCE.books (  
    id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,  -- Auto-incrementing primary key  
    title VARCHAR2(255) NOT NULL,                             -- Title of the book, cannot be null  
    author VARCHAR2(255) NOT NULL,                            -- Author of the book, cannot be null  
    isbn VARCHAR2(13) NOT NULL UNIQUE,                        -- ISBN number, must be unique and cannot be null  
    publication_year NUMBER CHECK (publication_year > 0),    -- Publication year must be a positive number  
    genre VARCHAR2(50),                                       -- Genre of the book, can be null  
    pages NUMBER CHECK (pages > 0)                            -- Number of pages must be a positive number  
);  