USE penny_wave_db;

CREATE TABLE recurring_bills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    category VARCHAR(255) NOT NULL,
    period ENUM('week', 'fortnight', 'month', 'quarter', 'year') NOT NULL,
    start_date DATE NOT NULL,
    day_of_month INT DEFAULT NULL,   
    day_of_week INT DEFAULT NULL,   
    direct_debit BOOLEAN DEFAULT false,
    status ENUM('active', 'paused') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_generated_date DATE DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

SELECT * FROM recurring_bills;
