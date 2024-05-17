DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS MajiteleAuta;

--car owners
CREATE TABLE MajiteleAuta (
    ID SERIAL PRIMARY KEY,
    Jmeno VARCHAR(50) NOT NULL,
    Prijmeni VARCHAR(50) NOT NULL
);

CREATE SEQUENCE IF NOT EXISTS cars_id_seq;
-- cars
CREATE TABLE Cars (
    ID INT PRIMARY KEY DEFAULT nextval('cars_id_seq'),
    MajitelID INT NOT NULL,
    Znacka VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    RokVyroby INT NOT NULL,
    FOREIGN KEY (MajitelID) REFERENCES MajiteleAuta(ID)
);

INSERT INTO MajiteleAuta (Jmeno, Prijmeni) VALUES
('Jaroslav', 'Holub'),
('Martin', 'Novák'),
('Kateřina', 'Svobodová'),
('Pavel', 'Dvořák'),
('Lucie', 'Králová'),
('Petr', 'Marek'),
('Jana', 'Novotná'),
('Tomáš', 'Procházka'),
('Alena', 'Veselá'),
('Jan', 'Zeman'),
('Veronika', 'Pospíšilová'),
('Lukáš', 'Mareš'),
('Marie', 'Kovářová'),
('Josef', 'Nový'),
('Eva', 'Kovaříková'),
('David', 'Jelínek');

INSERT INTO Cars (MajitelID, Znacka, Model, RokVyroby) VALUES 
(1, 'Škoda', 'Fabia', 2015),
(2, 'Škoda', 'Octavia', 2018),
(3, 'Volkswagen', 'Golf', 2020),
(4, 'Ford', 'Focus', 2017),
(5, 'Toyota', 'Corolla', 2019),
(6, 'Honda', 'Civic', 2016),
(7, 'BMW', '3 Series', 2021),
(8, 'Audi', 'A4', 2020),
(9, 'Mercedes-Benz', 'C-Class', 2018),
(10, 'Renault', 'Megane', 2017),
(11, 'Škoda', 'Superb', 2022),
(12, 'Peugeot', '308', 2018),
(13, 'Nissan', 'Qashqai', 2019),
(14, 'Hyundai', 'i30', 2020),
(15, 'Kia', 'Ceed', 2021);

