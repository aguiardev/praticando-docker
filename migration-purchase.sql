-- Create database
CREATE DATABASE Bookstore;

-- Use the newly created database
USE Bookstore;

-- Create tables
CREATE TABLE Purchases (
    PurchaseId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT,
    PurchaseDate DATE,
    TotalPurchase DECIMAL(10, 2)
);

CREATE TABLE Books (
    BookId INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(100),
    Author NVARCHAR(50),
    Price DECIMAL(10, 2)
);

CREATE TABLE PurchaseItems (
    PurchaseItemId INT IDENTITY(1,1) PRIMARY KEY,
    PurchaseId INT,
    BookId INT,
    Quantity INT,
    FOREIGN KEY (PurchaseId) REFERENCES Purchases(PurchaseId),
    FOREIGN KEY (BookId) REFERENCES Books(BookId)
);

-- Insert test data
INSERT INTO Books (Title, Author, Price)
VALUES
  ('Dom Casmurro', 'Machado de Assis', 19.99),
  ('Grande Sertão: Veredas', 'João Guimarães Rosa', 24.99),
  ('Vidas Secas', 'Graciliano Ramos', 15.99),
  ('O Cortiço', 'Aluísio Azevedo', 18.99),
  ('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 22.99),
  ('Casa-Grande & Senzala', 'Gilberto Freyre', 17.99),
  ('Capitães da Areia', 'Jorge Amado', 21.99),
  ('Macunaíma', 'Mário de Andrade', 16.99),
  ('O Guarani', 'José de Alencar', 20.99),
  ('Claro Enigma', 'Carlos Drummond de Andrade', 23.99),
  ('Til', 'José de Alencar', 18.99),
  ('Quincas Borba', 'Machado de Assis', 25.99),
  ('O Alienista', 'Machado de Assis', 19.99),
  ('A Hora da Estrela', 'Clarice Lispector', 21.99),
  ('A Escrava Isaura', 'Bernardo Guimarães', 16.99),
  ('Iracema', 'José de Alencar', 22.99),
  ('O Auto da Compadecida', 'Ariano Suassuna', 24.99),
  ('O Triste Fim de Policarpo Quaresma', 'Lima Barreto', 18.99),
  ('São Bernardo', 'Graciliano Ramos', 20.99),
  ('Memórias de um Sargento de Milícias', 'Manuel Antônio de Almeida', 15.99),
  ('A Moreninha', 'Joaquim Manuel de Macedo', 23.99),
  ('A Paixão Segundo G.H.', 'Clarice Lispector', 19.99),
  ('O Cortiço', 'Aluísio Azevedo', 18.99),
  ('O Seminarista', 'Bernardo Guimarães', 21.99),
  ('Memórias Sentimentais de João Miramar', 'Oswald de Andrade', 17.99),
  ('Caramuru', 'José de Santa Rita Durão', 20.99),
  ('Angústia', 'Graciliano Ramos', 24.99),
  ('A Cidade e as Serras', 'Eça de Queirós', 22.99),
  ('A Rosa do Povo', 'Carlos Drummond de Andrade', 16.99),
  ('O Primo Basílio', 'Eça de Queirós', 25.99),
  ('Gabriela, Cravo e Canela', 'Jorge Amado', 19.99),
  ('O Quinze', 'Rachel de Queiroz', 21.99),
  ('Cinco Minutos', 'José de Alencar', 18.99),
  ('Macunaíma', 'Mário de Andrade', 20.99),
  ('A Casa dos Budas Ditosos', 'João Ubaldo Ribeiro', 23.99),
  ('Helena', 'Machado de Assis', 19.99),
  ('Sagarana', 'João Guimarães Rosa', 24.99),
  ('O Cortiço', 'Aluísio Azevedo', 18.99),
  ('O Triste Fim de Policarpo Quaresma', 'Lima Barreto', 22.99),
  ('Capitães da Areia', 'Jorge Amado', 17.99),
  ('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 21.99),
  ('Memórias Sentimentais de João Miramar', 'Oswald de Andrade', 16.99),
  ('A Hora da Estrela', 'Clarice Lispector', 20.99),
  ('Vidas Secas', 'Graciliano Ramos', 25.99),
  ('O Alienista', 'Machado de Assis', 19.99),
  ('Dom Casmurro', 'Machado de Assis', 23.99),
  ('A Escrava Isaura', 'Bernardo Guimarães', 18.99),
  ('O Seminarista', 'Bernardo Guimarães', 24.99),
  ('Quincas Borba', 'Machado de Assis', 22.99);

insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2005-08-28', 70.0);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2020-04-23', 209.72);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2001-06-17', 184.75);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2018-11-30', 247.17);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2022-03-26', 233.36);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2008-04-06', 127.67);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2016-08-21', 140.6);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2012-11-22', 147.02);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2018-01-28', 162.61);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2023-03-30', 92.44);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-10-01', 192.1);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-02-05', 52.29);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2013-12-19', 145.13);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2002-07-06', 203.3);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2016-07-31', 92.96);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2023-03-05', 239.13);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2014-10-21', 171.5);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2002-04-08', 136.98);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2012-07-08', 110.98);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2015-08-03', 116.96);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2019-11-08', 62.0);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2000-05-23', 101.88);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2012-08-16', 64.9);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2017-08-09', 58.31);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2017-07-20', 209.43);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2017-08-13', 142.79);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2011-10-04', 50.9);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2004-09-22', 180.78);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2020-06-11', 173.22);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2013-11-13', 71.75);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2005-08-02', 225.33);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2012-01-15', 102.37);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2016-11-21', 135.72);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2000-03-28', 126.82);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2021-04-16', 208.05);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2003-09-03', 77.75);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2001-12-11', 146.24);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2011-05-16', 166.93);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2018-02-21', 204.68);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2020-04-30', 101.97);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2012-05-01', 157.32);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2018-08-21', 163.76);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-12-16', 217.13);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2020-05-01', 230.21);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2016-01-28', 88.49);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2017-05-04', 103.22);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2014-01-03', 188.58);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2019-04-29', 146.01);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2005-12-25', 170.15);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2020-11-17', 178.13);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2018-03-06', 187.8);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2022-05-05', 65.16);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2000-07-10', 191.58);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-12-04', 243.09);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2018-10-18', 88.45);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2010-11-03', 76.22);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2002-08-13', 153.36);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2003-07-27', 207.45);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2013-02-16', 244.56);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2000-08-11', 195.13);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2001-10-07', 51.05);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-08-28', 209.66);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2010-12-06', 215.55);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2006-02-27', 207.13);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2020-05-14', 196.14);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2010-12-23', 224.14);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2000-08-28', 183.44);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2018-08-10', 136.11);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2013-09-01', 145.65);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2017-01-03', 223.96);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2003-01-07', 89.12);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2021-06-23', 199.75);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2021-01-16', 208.08);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2021-03-28', 218.6);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2016-07-24', 185.8);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2019-02-27', 172.56);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2017-03-08', 92.77);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2015-10-27', 244.95);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2010-10-29', 241.57);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2002-04-18', 164.75);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2016-07-02', 70.17);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2008-09-30', 130.16);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2007-04-26', 62.54);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2006-03-25', 141.55);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2019-07-01', 188.79);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2005-07-26', 100.71);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-04-26', 62.8);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2007-04-09', 232.47);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2010-12-23', 162.59);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2004-02-22', 202.82);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2002-01-28', 164.52);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-02-05', 64.26);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2009-06-22', 235.18);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2011-05-08', 111.92);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2005-02-28', 132.44);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2006-06-04', 145.88);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2018-10-30', 183.87);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (789012, '2012-04-24', 81.68);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2023-04-23', 61.93);
insert into Purchases (UserId, PurchaseDate, TotalPurchase) values (345678, '2014-09-14', 123.48);

insert into PurchaseItems (PurchaseId, BookId, Quantity) values (97, 42, 53);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (50, 28, 3);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (25, 7, 25);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (84, 15, 43);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (90, 16, 69);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (76, 33, 13);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (23, 29, 55);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (92, 36, 63);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (27, 24, 81);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (5, 19, 31);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (24, 15, 39);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (43, 31, 6);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (46, 35, 70);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (27, 25, 13);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (59, 18, 62);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (98, 3, 77);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (99, 45, 68);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (62, 34, 10);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (46, 12, 57);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (97, 48, 93);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (8, 16, 44);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (95, 2, 33);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (62, 7, 72);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (79, 25, 7);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (71, 29, 84);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (46, 16, 6);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (3, 15, 77);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (81, 38, 4);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (57, 31, 100);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (70, 18, 76);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (39, 1, 100);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (10, 27, 42);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (97, 48, 33);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (57, 4, 48);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (39, 28, 9);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (91, 23, 84);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (80, 36, 31);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (38, 13, 94);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (23, 15, 59);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (16, 46, 49);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (46, 4, 59);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (57, 25, 90);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (14, 16, 31);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (40, 39, 100);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (88, 35, 8);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (63, 43, 49);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (72, 33, 73);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (43, 39, 36);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (95, 3, 50);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (7, 44, 71);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (81, 11, 41);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (7, 17, 59);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (56, 47, 85);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (67, 3, 76);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (67, 28, 19);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (70, 3, 22);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (44, 15, 16);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (50, 36, 23);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (91, 45, 27);
insert into PurchaseItems (PurchaseId, BookId, Quantity) values (2, 28, 42);




--select UserId, PurchaseDate, TotalPurchase, Quantity, Title, Author
--from Purchases p
--inner join PurchaseItems pi on pi.PurchaseId = p.PurchaseId
--inner join Books b on b.BookId = pi.BookId
--order by PurchaseDate;