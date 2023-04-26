--SQL COMMANDS:
CREATE TABLE restaurants (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    restaurant_name VARCHAR(32),
    walking_distance INT,
    rating INT NOT NULL
);

INSERT INTO restaurants (restaurant_name, walking_distance, rating)
VALUES ('Ada Cafe', 3, 5);

SELECT restaurant_name 
FROM restaurants 
WHERE walking_distance < 5;

UPDATE restaurants
SET rating = 1
WHERE restaurant_name = 'Ada Cafe';

DELETE FROM restaurants 
WHERE restaurant_name = 'Ada Cafe';