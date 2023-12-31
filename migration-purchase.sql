-- Create database
CREATE DATABASE Bookstore;

-- Use the newly created database
USE Bookstore;

-- Create tables
CREATE TABLE Purchase (
    PurchaseId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT,
    PurchaseDate DATE
);

CREATE TABLE Book (
    BookId INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(100),
    Author NVARCHAR(50),
    Price DECIMAL(10, 2)
);

CREATE TABLE PurchaseItem (
    PurchaseItemId INT IDENTITY(1,1) PRIMARY KEY,
    PurchaseId INT,
    BookId INT,
    Quantity INT,
    FOREIGN KEY (PurchaseId) REFERENCES Purchases(PurchaseId),
    FOREIGN KEY (BookId) REFERENCES Books(BookId)
);

-- Insert test data
INSERT INTO Book (Title, Author, Price)
VALUES
  ('Dom Casmurro', 'Machado de Assis', 19.99),
  ('Grande Sert�o: Veredas', 'Jo�o Guimar�es Rosa', 24.99),
  ('Vidas Secas', 'Graciliano Ramos', 15.99),
  ('O Corti�o', 'Alu�sio Azevedo', 18.99),
  ('Mem�rias P�stumas de Br�s Cubas', 'Machado de Assis', 22.99),
  ('Casa-Grande & Senzala', 'Gilberto Freyre', 17.99),
  ('Capit�es da Areia', 'Jorge Amado', 21.99),
  ('Macuna�ma', 'M�rio de Andrade', 16.99),
  ('O Guarani', 'Jos� de Alencar', 20.99),
  ('Claro Enigma', 'Carlos Drummond de Andrade', 23.99),
  ('Til', 'Jos� de Alencar', 18.99),
  ('Quincas Borba', 'Machado de Assis', 25.99),
  ('O Alienista', 'Machado de Assis', 19.99),
  ('A Hora da Estrela', 'Clarice Lispector', 21.99),
  ('A Escrava Isaura', 'Bernardo Guimar�es', 16.99),
  ('Iracema', 'Jos� de Alencar', 22.99),
  ('O Auto da Compadecida', 'Ariano Suassuna', 24.99),
  ('O Triste Fim de Policarpo Quaresma', 'Lima Barreto', 18.99),
  ('S�o Bernardo', 'Graciliano Ramos', 20.99),
  ('Mem�rias de um Sargento de Mil�cias', 'Manuel Ant�nio de Almeida', 15.99),
  ('A Moreninha', 'Joaquim Manuel de Macedo', 23.99),
  ('A Paix�o Segundo G.H.', 'Clarice Lispector', 19.99),
  ('O Corti�o', 'Alu�sio Azevedo', 18.99),
  ('O Seminarista', 'Bernardo Guimar�es', 21.99),
  ('Mem�rias Sentimentais de Jo�o Miramar', 'Oswald de Andrade', 17.99),
  ('Caramuru', 'Jos� de Santa Rita Dur�o', 20.99),
  ('Ang�stia', 'Graciliano Ramos', 24.99),
  ('A Cidade e as Serras', 'E�a de Queir�s', 22.99),
  ('A Rosa do Povo', 'Carlos Drummond de Andrade', 16.99),
  ('O Primo Bas�lio', 'E�a de Queir�s', 25.99),
  ('Gabriela, Cravo e Canela', 'Jorge Amado', 19.99),
  ('O Quinze', 'Rachel de Queiroz', 21.99),
  ('Cinco Minutos', 'Jos� de Alencar', 18.99),
  ('Macuna�ma', 'M�rio de Andrade', 20.99),
  ('A Casa dos Budas Ditosos', 'Jo�o Ubaldo Ribeiro', 23.99),
  ('Helena', 'Machado de Assis', 19.99),
  ('Sagarana', 'Jo�o Guimar�es Rosa', 24.99),
  ('O Corti�o', 'Alu�sio Azevedo', 18.99),
  ('O Triste Fim de Policarpo Quaresma', 'Lima Barreto', 22.99),
  ('Capit�es da Areia', 'Jorge Amado', 17.99),
  ('Mem�rias P�stumas de Br�s Cubas', 'Machado de Assis', 21.99),
  ('Mem�rias Sentimentais de Jo�o Miramar', 'Oswald de Andrade', 16.99),
  ('A Hora da Estrela', 'Clarice Lispector', 20.99),
  ('Vidas Secas', 'Graciliano Ramos', 25.99),
  ('O Alienista', 'Machado de Assis', 19.99),
  ('Dom Casmurro', 'Machado de Assis', 23.99),
  ('A Escrava Isaura', 'Bernardo Guimar�es', 18.99),
  ('O Seminarista', 'Bernardo Guimar�es', 24.99),
  ('Quincas Borba', 'Machado de Assis', 22.99);

insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2005-08-28');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2020-04-23');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2001-06-17');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2018-11-30');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2022-03-26');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2008-04-06');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2016-08-21');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2012-11-22');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2018-01-28');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2023-03-30');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-10-01');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-02-05');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2013-12-19');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2002-07-06');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2016-07-31');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2023-03-05');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2014-10-21');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2002-04-08');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2012-07-08');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2015-08-03');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2019-11-08');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2000-05-23');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2012-08-16');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2017-08-09');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2017-07-20');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2017-08-13');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2011-10-04');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2004-09-22');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2020-06-11');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2013-11-13');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2005-08-02');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2012-01-15');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2016-11-21');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2000-03-28');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2021-04-16');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2003-09-03');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2001-12-11');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2011-05-16');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2018-02-21');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2020-04-30');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2012-05-01');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2018-08-21');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-12-16');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2020-05-01');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2016-01-28');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2017-05-04');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2014-01-03');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2019-04-29');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2005-12-25');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2020-11-17');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2018-03-06');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2022-05-05');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2000-07-10');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-12-04');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2018-10-18');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2010-11-03');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2002-08-13');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2003-07-27');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2013-02-16');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2000-08-11');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2001-10-07');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-08-28');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2010-12-06');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2006-02-27');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2020-05-14');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2010-12-23');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2000-08-28');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2018-08-10');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2013-09-01');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2017-01-03');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2003-01-07');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2021-06-23');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2021-01-16');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2021-03-28');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2016-07-24');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2019-02-27');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2017-03-08');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2015-10-27');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2010-10-29');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2002-04-18');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2016-07-02');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2008-09-30');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2007-04-26');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2006-03-25');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2019-07-01');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2005-07-26');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-04-26');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2007-04-09');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2010-12-23');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2004-02-22');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2002-01-28');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2011-02-05');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2009-06-22');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2011-05-08');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2005-02-28');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2006-06-04');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2018-10-30');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (789012, '2012-04-24');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2023-04-23');
insert into Purchase (UserId, PurchaseDate, TotalPurchase) values (345678, '2014-09-14');

insert into PurchaseItem (PurchaseId, BookId, Quantity) values (97, 42, 53);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (50, 28, 3);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (25, 7, 25);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (84, 15, 43);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (90, 16, 69);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (76, 33, 13);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (23, 29, 55);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (92, 36, 63);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (27, 24, 81);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (5, 19, 31);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (24, 15, 39);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (43, 31, 6);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (46, 35, 70);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (27, 25, 13);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (59, 18, 62);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (98, 3, 77);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (99, 45, 68);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (62, 34, 10);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (46, 12, 57);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (97, 48, 93);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (8, 16, 44);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (95, 2, 33);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (62, 7, 72);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (79, 25, 7);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (71, 29, 84);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (46, 16, 6);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (3, 15, 77);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (81, 38, 4);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (57, 31, 100);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (70, 18, 76);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (39, 1, 100);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (10, 27, 42);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (97, 48, 33);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (57, 4, 48);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (39, 28, 9);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (91, 23, 84);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (80, 36, 31);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (38, 13, 94);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (23, 15, 59);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (16, 46, 49);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (46, 4, 59);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (57, 25, 90);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (14, 16, 31);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (40, 39, 100);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (88, 35, 8);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (63, 43, 49);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (72, 33, 73);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (43, 39, 36);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (95, 3, 50);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (7, 44, 71);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (81, 11, 41);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (7, 17, 59);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (56, 47, 85);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (67, 3, 76);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (67, 28, 19);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (70, 3, 22);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (44, 15, 16);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (50, 36, 23);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (91, 45, 27);
insert into PurchaseItem (PurchaseId, BookId, Quantity) values (2, 28, 42);

--SELECT * FROM PurchaseItem where PurchaseId = 97
--SELECT * FROM Book where BookId in (42,48)

--select p.UserId, p.PurchaseDate, Quantity, b.Title, b.Author
--from Purchases p
--inner join PurchaseItems pi on pi.PurchaseId = p.PurchaseId
--inner join Books b on b.BookId = pi.BookId