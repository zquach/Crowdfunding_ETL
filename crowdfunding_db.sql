-- Create Contacts table
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR
);

-- Create Category table
CREATE TABLE Category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR
);

-- Create Subcategory table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR
);

-- Create Campaign table, with foreign keys to Contacts, Category, and Subcategory
CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT REFERENCES Contacts(contact_id),
    company_name VARCHAR,
    description VARCHAR,
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR,
    backers_count INT,
    country VARCHAR,
    currency VARCHAR,
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR REFERENCES Category(category_id),
    subcategory_id VARCHAR REFERENCES Subcategory(subcategory_id)
);

SELECT * FROM Contacts LIMIT 5;
SELECT * FROM Category LIMIT 5;
SELECT * FROM Subcategory LIMIT 5;
SELECT * FROM Campaign LIMIT 5;

