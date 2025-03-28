CREATE TABLE IF NOT EXISTS events (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATETIME NOT NULL,
    location VARCHAR(255) NOT NULL,
    organizer VARCHAR(255) NOT NULL,
    event_type VARCHAR(100) NOT NULL,
    total_capacity INT NOT NULL,
    available_seats INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT chk_capacity CHECK (available_seats <= total_capacity AND available_seats >= 0)
);