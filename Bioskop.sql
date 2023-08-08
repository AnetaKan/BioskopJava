CREATE DATABASE Bioskop;
USE Bioskop;

CREATE TABLE Korisnik (
   id INT PRIMARY KEY AUTO_INCREMENT,
   ime VARCHAR(30),
   prezime VARCHAR(50),
   korisnickoImeKorisnika VARCHAR(20),
   passKorisnika VARCHAR(30)
);

INSERT INTO Korisnik
VALUES (1, "Ana", "Jovanovic", "anchi", "ana123" ),
       (2, "Marko", "Markovic", "mare", "marko123"),
       (3, "Ivan", "Ilic", "ivke", "ivan123");
       
SELECT * FROM Korisnik;

CREATE TABLE Zaposleni (
   id INT PRIMARY KEY AUTO_INCREMENT,
   imeZap VARCHAR(30),
   prezimeZap VARCHAR(50),
   korisnickoImeZap VARCHAR(20),
   passZap VARCHAR(30),
   pozicija VARCHAR(30)
);

INSERT INTO Zaposleni
VALUES (1, "Stevan", "Bogdanovic", "StevanB", "stevan123", "blagajnik" ),
       (2, "Jovan", "Jovanovic", "JovanJ", "jovan123", "administrator"),
       (3, "Jelena", "Vukovic", "JelenaV", "jelena123", "razvodnik"),
       (4, "Dunja", "Milosevic", "DunjaM", "dunja123", "callcentar"),
       (5, "Anja", "Ilic", "AnjaI", "anja123", "blagajnik");

SELECT * FROM Zaposleni;

CREATE TABLE Zanr (
   id INT PRIMARY KEY AUTO_INCREMENT,
   tip VARCHAR(30)
);

INSERT INTO Zanr
VALUES (1, "komedija" ),
       (2, "porodicni"),
       (3, "animirani"),
       (4, "avantura");
       
SELECT * FROM Zanr;

CREATE TABLE Filmovi (
   id INT PRIMARY KEY AUTO_INCREMENT,
   naziv VARCHAR(50),
   id_zanra INT,
   FOREIGN KEY(id_zanra) REFERENCES Zanr(id),
   trajanje INT
);

INSERT INTO Filmovi
VALUES (1, "Barbie", 1, 114 ),
       (2, "Mala sirena", 2, 135),
       (3, "Ukleta kuca", 1, 122),
       (4, "Elemental", 3, 110),
       (5, "Ups 2! Avantura se nastavlja", 3, 86),
       (6, "Devojka za sve", 1, 103),
       (7, "Indijana Dzouns i artefakt sudbine", 4, 154);
       
       SELECT * FROM Filmovi;
       
   CREATE TABLE Rezervacija (
   id INT PRIMARY KEY AUTO_INCREMENT,
   id_korisnika INT,
   FOREIGN KEY(id_korisnika) REFERENCES Korisnik(id),
   id_filma INT,
   FOREIGN KEY(id_filma) REFERENCES Filmovi(id),
   datumIVremeRezervacije DATETIME ,
   brKarata INT,
   brReda INT
);

INSERT INTO Rezervacija
VALUES (1, 1 ,1, '2023-08-02 14:00:00', 4, 5),
       (2, 2, 7, '2023-08-02 20:00:00', 2, 8),
       (3, 3, 4, '2023-08-03 18:00:00', 3, 10);
       
       SELECT * FROM Rezervacija;
       
       

