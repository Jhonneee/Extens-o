CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL,
    hire_date DATE NOT NULL
);
CREATE TABLE salaries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    payment_frequency VARCHAR(50) NOT NULL,
    reminder_date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tokens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    token VARCHAR(255) NOT NULL,
    expiry_date DATETIME NOT NULL
);

CREATE TABLE user_tokens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    token VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (username) REFERENCES users(username)
);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    value DECIMAL(10, 2) NOT NULL,
    expiration_date DATE NOT NULL,
    quantity INT NOT NULL
);
