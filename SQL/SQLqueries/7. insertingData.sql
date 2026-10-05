-- Insert Without Specifying Column Names (Full Row Insert)
-- This method requires you to provide values for all columns in order,
-- except columns with default values or AUTO_INCREMENT
INSERT INTO users VALUES
    (1, 'Ayush', 'ayush@example.com', 'Male', '2005-05-07', DEFAULT);

-- Insert by Specifying Column Names.
INSERT INTO users (name, email, gender, date_of_birth) VALUES
    ('Rohit', 'rohit@example.com', 'Male', '2006-11-23');

-- or for multiple rows:
INSERT INTO users (name, email, gender, date_of_birth) VALUES
    ('Rohit', 'rohit@example.com', 'Male', '2006-11-23'),
    ('Cat', 'cat@example.com', 'Other', '1988-02-17');