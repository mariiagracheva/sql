-- Include your solutions to the More Practice problems in this file.



-- Insert a Brand
INSERT INTO brands (brand_id, name, founded, headquarters)
VALUES ('sub', 'Subaru', 1953, 'Tokyo, Japan');



-- Insert Models
INSERT INTO models (year, brand_id, name)
VALUES (
    2015,
    (SELECT brand_id FROM brands WHERE name = 'Chevrolet'), 
    'Malibu'
    );


INSERT INTO models (year, brand_id, name)
VALUES (
    2015,
    (SELECT brand_id FROM brands WHERE name = 'Subaru'),
    'Outdoor'
    );


-- Create an Awards Table
CREATE TABLE awards(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    year INTEGER not NULL,
    winner_id INTEGER
    );


-- Insert Awards
INSERT INTO awards (name, year, winner_id)
VALUES (
    'IIHS Safety Award',
    2015,
    (SELECT model_id
        FROM models
        WHERE year = 2015 AND
            name = 'Malibu' AND
            brand_id = (SELECT brand_id
                        FROM brands
                        WHERE name = 'Chevrolet')));

INSERT INTO awards (name, year, winner_id)
VALUES (
    'IIHS Safety Award',
    2015,
    (SELECT model_id
        FROM models
        WHERE year = 2015 AND
            name = 'Outback' AND
            brand_id = (SELECT brand_id
                        FROM brands
                        WHERE name = 'Subaru')));


INSERT INTO awards (name, year)
VALUES (
    'Best in Class',
    2015
    );


















