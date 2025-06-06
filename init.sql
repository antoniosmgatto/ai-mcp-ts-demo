-- Create the books table
CREATE TABLE public.books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    published_year INTEGER
);

-- Insert 20 example books
INSERT INTO public.books (title, author, published_year) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 1925),
('To Kill a Mockingbird', 'Harper Lee', 1960),
('1984', 'George Orwell', 1949),
('Pride and Prejudice', 'Jane Austen', 1813),
('The Catcher in the Rye', 'J.D. Salinger', 1951),
('The Lord of the Rings', 'J.R.R. Tolkien', 1954),
('Animal Farm', 'George Orwell', 1945),
('Brave New World', 'Aldous Huxley', 1932),
('The Hobbit', 'J.R.R. Tolkien', 1937),
('Fahrenheit 451', 'Ray Bradbury', 1953),
('Moby Dick', 'Herman Melville', 1851),
('War and Peace', 'Leo Tolstoy', 1869),
('The Odyssey', 'Homer', -800),
('Crime and Punishment', 'Fyodor Dostoevsky', 1866),
('The Divine Comedy', 'Dante Alighieri', 1320),
('The Adventures of Huckleberry Finn', 'Mark Twain', 1884),
('Alice''s Adventures in Wonderland', 'Lewis Carroll', 1865),
('Don Quixote', 'Miguel de Cervantes', 1605),
('Jane Eyre', 'Charlotte Brontë', 1847),
('Wuthering Heights', 'Emily Brontë', 1847);
