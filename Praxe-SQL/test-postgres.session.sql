DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS MajiteleAuta;
DROP TABLE IF EXISTS BankovniUcty;

-- Vytvoření tabulky pro majitele aut
CREATE TABLE MajiteleAuta (
    ID SERIAL PRIMARY KEY,
    Jmeno VARCHAR(50) NOT NULL,
    Prijmeni VARCHAR(50) NOT NULL
);

CREATE SEQUENCE IF NOT EXISTS cars_id_seq;
-- Vytvoření tabulky pro auta
CREATE TABLE Cars (
    ID INT PRIMARY KEY DEFAULT nextval('cars_id_seq'),
    MajitelID INT NOT NULL,
    Znacka VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    RokVyroby INT NOT NULL,
    FOREIGN KEY (MajitelID) REFERENCES MajiteleAuta(ID)
);

-- Vytvoření tabulky pro bankovní účty
CREATE TABLE BankovniUcty (
    ID SERIAL PRIMARY KEY,
    MajitelID INT NOT NULL,
    NazevBanky VARCHAR(50) NOT NULL,
    FOREIGN KEY (MajitelID) REFERENCES MajiteleAuta(ID)
);

-- Vložení dat do tabulky MajiteleAuta
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
('David', 'Jelínek'),
('Anna', 'Horáková'),
('Jakub', 'Pokorný'),
('Petra', 'Mlíková'),
('Václav', 'Král'),
('Simona', 'Hrubá'),
('Dominik', 'Fiala'),
('Radka', 'Kolářová'),
('Michal', 'Svoboda'),
('Ivana', 'Růžičková'),
('Ondřej', 'Šimek'),
('Gabriela', 'Černá'),
('Adéla', 'Jandová'),
('Filip', 'Urban'),
('Kristýna', 'Bartová'),
('Daniel', 'Beneš'),
('Tereza', 'Křížová'),
('Roman', 'Veselý'),
('Nikola', 'Sedláčková'),
('Adam', 'Mach'),
('Sandra', 'Pešková'),
('Štěpán', 'Holý'),
('Barbora', 'Navrátilová'),
('Vít', 'Pavlíček'),
('Klára', 'Suchá'),
('Matěj', 'Strnad'),
('Eliška', 'Trnková'),
('Tomáš', 'Hruška'),
('Veronika', 'Bláhová'),
('Aleš', 'Polák'),
('Denisa', 'Vávrová'),
('Patrik', 'Zahradník'),
('Lucie', 'Müllerová'),
('Jan', 'Jelínek'),
('Petra', 'Štěpánková');

-- Vložení dat do tabulky Cars
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
(15, 'Kia', 'Ceed', 2021),
(16, 'Opel', 'Astra', 2015),
(17, 'Seat', 'Leon', 2018),
(18, 'Mazda', '3', 2019),
(19, 'Subaru', 'Impreza', 2020),
(20, 'Mitsubishi', 'Lancer', 2016),
(21, 'Alfa Romeo', 'Giulietta', 2017),
(22, 'Citroën', 'C4', 2018),
(23, 'Fiat', '500', 2019),
(24, 'Volvo', 'S60', 2020),
(25, 'Mini', 'Cooper', 2015),
(26, 'Jeep', 'Renegade', 2021),
(27, 'Suzuki', 'Swift', 2016),
(28, 'Jaguar', 'XE', 2017),
(29, 'Land Rover', 'Discovery', 2018),
(30, 'Porsche', 'Cayenne', 2019),
(31, 'Škoda', 'Superb', 2020),
(32, 'Chevrolet', 'Malibu', 2015),
(33, 'Cadillac', 'CTS', 2016),
(34, 'Chrysler', '300', 2017),
(35, 'Dodge', 'Charger', 2018),
(36, 'Ford', 'Mustang', 2019),
(37, 'Lincoln', 'MKZ', 2020),
(38, 'Buick', 'Regal', 2021),
(39, 'GMC', 'Terrain', 2015),
(40, 'Honda', 'Accord', 2018),
(41, 'Toyota', 'Camry', 2019),
(42, 'Lexus', 'ES', 2020),
(43, 'Acura', 'TLX', 2021),
(44, 'Infiniti', 'Q50', 2016),
(45, 'Nissan', 'Altima', 2017),
(46, 'Hyundai', 'Sonata', 2018),
(47, 'Kia', 'Optima', 2019),
(48, 'Mazda', '6', 2020),
(49, 'Subaru', 'Legacy', 2021),
(50, 'Volkswagen', 'Passat', 2015),
(51, 'Audi', 'A6', 2016),
(52, 'BMW', '5 Series', 2017),
(53, 'Mercedes-Benz', 'E-Class', 2018),
(54, 'Volvo', 'S90', 2019),
(55, 'Jaguar', 'XF', 2020);

-- Vložení dat do tabulky BankovniUcty
INSERT INTO BankovniUcty (MajitelID, MajitelAutaID, NazevBanky) VALUES
(1, 1, 'Česká spořitelna'),
(2, 2, 'Komerční banka'),
(3, 3, 'ČSOB'),
(4, 4, 'Raiffeisenbank'),
(5, 5, 'MONETA Money Bank'),
(6, 6, 'UniCredit Bank'),
(7, 7, 'Fio banka'),
(8, 8, 'Air Bank'),
(9, 9, 'mBank'),
(10, 10, 'Equa bank'),
(11, 11, 'Sberbank'),
(12, 12, 'ING Bank'),
(13, 13, 'Creditas'),
(14, 14, 'Expobank'),
(15, 15, 'Oberbank'),
(16, 16, 'Česká spořitelna'),
(17, 17, 'Komerční banka'),
(18, 18, 'ČSOB'),
(19, 19, 'Raiffeisenbank'),
(20, 20, 'MONETA Money Bank'),
(21, 21, 'UniCredit Bank'),
(22, 22, 'Fio banka'),
(23, 23, 'Air Bank'),
(24, 24, 'mBank'),
(25, 25, 'Equa bank'),
(26, 26, 'Sberbank'),
(27, 27, 'ING Bank'),
(28, 28, 'Creditas'),
(29, 29, 'Expobank'),
(30, 30, 'Oberbank'),
(31, 31, 'Česká spořitelna'),
(32, 32, 'Komerční banka'),
(33, 33, 'ČSOB'),
(34, 34, 'Raiffeisenbank'),
(35, 35, 'MONETA Money Bank'),
(36, 36, 'UniCredit Bank'),
(37, 37, 'Fio banka'),
(38, 38, 'Air Bank'),
(39, 39, 'mBank'),
(40, 40, 'Equa bank'),
(41, 41, 'Sberbank'),
(42, 42, 'ING Bank'),
(43, 43, 'Creditas'),
(44, 44, 'Expobank'),
(45, 45, 'Oberbank'),
(46, 46, 'Česká spořitelna'),
(47, 47, 'Komerční banka'),
(48, 48, 'ČSOB'),
(49, 49, 'Raiffeisenbank'),
(50, 50, 'MONETA Money Bank'),
(51, 51, 'UniCredit Bank'),
(52, 52, 'Fio banka'),
(53, 53, 'Air Bank'),
(54, 54, 'mBank'),
(55, 55, 'Equa bank');