CREATE DATABASE IF NOT EXIST szerviz_db 
DEFAULT CHARACTER SET UTF8
COLLATE UTF8_HUNGARIAN_CI;

USE szerviz_db;

CREATE TABLE IF NOT EXIST tulajdonosok {
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(60) NOT NULL UNIQUE
};

CREATE TABLE IF NOT EXIST jarmuvek {
    id INT AUTO_INCREMENT PRIMARY KEY,
    tulajdonos_id INT,
    rendszam VARCHAR(15) NOT NULL,
    modell VARCHAR(80) NOT NULL,
    javitasi_koltseg INT NOT NULL,
    kesz_van BOOLEAN NOT NULL,

    CONSTRAINT fk_tulajdonos_id FOREIGN KEY (tulajdonos_id) REFERENCES tulajdonosok(id)
};

INSERT INTO tulajdonosok (id, nev) VALUES
(1, 'Kovács Péter'), (2, 'Nagy Anna'), (3, 'Szabó Gábor');

INSERT INTO jarmuvek (id, tulajdonos_id, rendszam, modell, javitasi_koltseg, kesz_van) VALUES
(1, 1, 'AA-BB-101', 'Ford Focus 1.6', 45000, 1),
(2, 1, 'AA-BB-102', 'Ford Fiesta 1.2', 120000, 0),
(3, 1, 'AA-CC-203', 'Opel Astra H', 32000, 1),
(4, 2, 'BB-DD-304', 'Volkswagen Golf VII', 85000, 1),
(5, 2, 'BB-EE-405', 'Volkswagen Passat B8', 210000, 0),
(6, 2, 'BB-FF-506', 'Skoda Octavia 2.0', 62000, 1),
(7, 3, 'CC-GG-607', 'Toyota Yaris Hybrid', 28000, 1),
(8, 3, 'CC-HH-708', 'Toyota Corolla Sedan', 94000, 0),
(9, 3, 'CC-II-809', 'BMW 320d Touring', 175000, 1),
(10, 1, 'AA-JJ-910', 'Ford Mondeo Titanium', 140000, 0);
