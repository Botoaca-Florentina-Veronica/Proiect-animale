-- Creare tabela aAnimal
CREATE TABLE aAnimal (
    codA NUMBER PRIMARY KEY,
    tip VARCHAR2(1) CONSTRAINT check_tip CHECK (tip IN ('c', 'p', 'i')),
    rasa VARCHAR2(50),
    nume VARCHAR2(50),
    varsta NUMBER,
    descriere VARCHAR2(200),
    poza BLOB
);

-- Creare tabela aTip
CREATE TABLE aTip (
    tip VARCHAR2(1) PRIMARY KEY,
    denumire VARCHAR2(50),
    necesarAvizM VARCHAR2(3) CONSTRAINT check_avizM CHECK (necesarAvizM IN ('da', 'nu'))
);

-- Creare tabela aListaVaccin
CREATE TABLE aListaVaccin (
    codA NUMBER,
    vaccin VARCHAR2(50),
    data DATE,
    PRIMARY KEY (codA, vaccin),
    FOREIGN KEY (codA) REFERENCES aAnimal(codA)
);

-- Creare tabela aCerereAdoptie
CREATE TABLE aCerereAdoptie (
    cID VARCHAR2(10) PRIMARY KEY,
    codA NUMBER,
    data DATE,
    cnp VARCHAR2(13),
    nume VARCHAR2(50),
    tel VARCHAR2(15),
    FOREIGN KEY (codA) REFERENCES aAnimal(codA)
);


-- Inserare date in tabela aAnimal
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (101, 'c', 'Labrador', 'Max', 2, 'Jucăuș și prietenos');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (102, 'c', 'Ciobănesc German', 'Rex', 3, 'Fidel și protectiv');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (103, 'p', 'Siameză', 'Luna', 1, 'Jucăușă și afectuoasă');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (104, 'c', 'Golden Retriever', 'Rocky', 2, 'Prietenos și loial');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (105, 'i', 'Chinchilla', 'Lily', 2, 'Neastâmpărat');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (106, 'i', 'Pannon Alb', 'Monalisa', 2, 'Adorabilă și calmă');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (107, 'c', 'Beagle', 'Bailey', 3, 'Somnoros');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (108, 'p', 'Maine Coon', 'Leo', 3, 'Majestuos și jucăuș');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (109, 'c', 'Pug', 'Milo', 2, 'Jucăuș și loial');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (110, 'p', 'Persan', 'Mimi', 2, 'Mândru și elegant');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (111, 'i', 'Argintiu', 'Brutus', 1, 'Mâncăcios');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (112, 'c', 'Dalmatian', 'Dante', 3, 'Jucăuș și îi place să alerge');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (113, 'c', 'Bichon', 'Bubu', 5, 'Fidel și protectiv');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (114, 'p', 'Bengal', 'Charlie', 1, 'Afectuoasă și îi place să doarmă');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (115, 'i', 'Uriașul Belgian', 'Bella', 2, 'Activă');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (116, 'i', 'Burgundia', 'Artemis', 2, 'Nu îi place frigul');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (117, 'c', 'Australian Terrier', 'Duke', 3, 'Majestuos și jucăuș');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (118, 'p', 'British Shorthair', 'Lulu', 2, 'Leneșă');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (119, 'i', 'Berbecul german', 'Oliver', 2, 'Sensibil');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (120, 'c', 'Husky', 'Oscar', 1, 'Agitat');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (121, 'c', 'Akita', 'Hachiko', 2, 'Loial și prietenos');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (122, 'c', 'Dachshund', 'Nero', 3, 'Îi place atenția');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (123, 'p', 'Peterbald', 'Kitty', 1, 'Curioasă');
INSERT INTO aAnimal (codA, tip, rasa, nume, varsta, descriere) VALUES (124, 'i', 'Hycole', 'Bugs Bunny', 2, 'Prietenos și loial');


-- Inserare date in tabela aTip
INSERT INTO aTip (tip, denumire, necesarAvizM) VALUES ('c', 'Caine', 'da');
INSERT INTO aTip (tip, denumire, necesarAvizM) VALUES ('p', 'Pisica', 'da');
INSERT INTO aTip (tip, denumire, necesarAvizM) VALUES ('i', 'Iepure', 'nu');



-- Inserare date in tabela aListaVaccin
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (101, 'Leptospiroza', TO_DATE('2024-04-24', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (102, 'Rabie', TO_DATE('2024-04-21', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (122, 'Leishmanioza', TO_DATE('2024-06-14', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (104, 'Boala Lyme', TO_DATE('2024-07-02', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (112, 'DHPP', TO_DATE('2024-09-15', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (103, 'Calicivirusul felin', TO_DATE('2024-08-20', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (110, 'Rinotraheită', TO_DATE('2024-10-01', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (108, 'FeLV', TO_DATE('2024-05-05', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (118, 'Rabie', TO_DATE('2024-06-07', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (123, 'Parvoviroză', TO_DATE('2024-10-14', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (115, 'Mixomatoză', TO_DATE('2024-09-03', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (124, 'RHD', TO_DATE('2024-10-07', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (111, 'Clostridioză', TO_DATE('2024-05-11', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (119, 'Pasteureloză', TO_DATE('2024-09-19', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (116, 'Rabie', TO_DATE('2024-09-22', 'YYYY-MM-DD'));
INSERT INTO aListaVaccin (codA, vaccin, data) VALUES (106, 'Leptospiroza', TO_DATE('2024-12-12', 'YYYY-MM-DD'));


-- Inserare date in tabela aCerereAdoptie
INSERT INTO aCerereAdoptie (cID, codA, data, cnp, nume, tel) VALUES ('C1342', 101, TO_DATE('2024-04-24', 'YYYY-MM-DD'), '2930578691768', 'Pop Gabriela', '0712254254');
INSERT INTO aCerereAdoptie (cID, codA, data, cnp, nume, tel) VALUES ('C1343', 102, TO_DATE('2024-06-25', 'YYYY-MM-DD'), '1785680391771', 'Ionescu Ion', '0778549255');
INSERT INTO aCerereAdoptie (cID, codA, data, cnp, nume, tel) VALUES ('C1344', 103, TO_DATE('2024-02-26', 'YYYY-MM-DD'), '2670987391784', 'Popescu Maria', '0790785656');
INSERT INTO aCerereAdoptie (cID, codA, data, cnp, nume, tel) VALUES ('C1345', 104, TO_DATE('2024-01-21', 'YYYY-MM-DD'), '1207808391797', 'Antonescu Andrei', '0736720057');
INSERT INTO aCerereAdoptie (cID, codA, data, cnp, nume, tel) VALUES ('C1346', 105, TO_DATE('2024-07-28', 'YYYY-MM-DD'), '2670458391809', 'Georgescu Elena', '0708946258');
INSERT INTO aCerereAdoptie (cID, codA, data, cnp, nume, tel) VALUES ('C1347', 106, TO_DATE('2024-08-29', 'YYYY-MM-DD'), '1056784391810', 'Vasilescu Adrian', '0753204159');
INSERT INTO aCerereAdoptie (cID, codA, data, cnp, nume, tel) VALUES ('C1348', 107, TO_DATE('2024-09-03', 'YYYY-MM-DD'), '2084537831822', 'Stancu Ioana', '0776585480');
INSERT INTO aCerereAdoptie (cID, codA, data, cnp, nume, tel) VALUES ('C1349', 108, TO_DATE('2024-05-01', 'YYYY-MM-DD'), '1895306491835', 'Dumitrescu Mihai', '0712254261');

