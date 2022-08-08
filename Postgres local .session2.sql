CREATE TABLE SOCIETE (Codesoc INTEGER PRIMARY KEY , Nom varchar (15) NOT NULL  , Adresse VARCHAR (50)) ;  
CREATE TABLE CAMPAGNE (Codecamp VARCHAR(5) PRIMARY KEY , Titre varchar (50) , Codesoc INTEGER REFERENCES SOCIETE(Codesoc) , Produit VARCHAR(50) , Cible CHAR (25) ,
 CONSTRAINT alpha CHECK(Cible in ('ENF' , 'ADO' , 'MM50' , 'TOUS')));
CREATE TABLE SPOT (Codespot CHAR (5) PRIMARY KEY , Libellé VARCHAR(30) ,
 Durée INTEGER , Codecamp VARCHAR(5) Not NULL  REFERENCES CAMPAGNE(Codecamp)); 
 CREATE TABLE TARIF (Média char(30) , Moment char (30) , Prix NUMERIC , 
 PRIMARY KEY (Média,Moment) ,
  Constraint beta CHECK (Média in ('TF1' ,'FRANCE2','FRANCE3','CANAL+','FRANCE5','M6','ARTE')),
    CONSTRAINT charlie CHECK (Moment in ('JOUR' , 'DEBSOIR' ,'SOIR' ,'FINS')));

CREATE TABLE PROGRAMMATION (Codespot CHAR (5) REFERENCES SPOT(Codespot),
Média CHAR(30) , Moment char(30) , Datep DATE , FOREIGN KEY (Média,Moment) REFERENCES TARIF(Média,Moment) , 
PRIMARY KEY (Codespot,Média,Moment,Datep));
INSERT INTO SOCIETE VALUES (101 , 'Nescafé' , '523 rue des grains Paris 13'),(102 , 'CIC' , '5 rue du brigand Paris 15
'),(120 , 'Peugeot' , '36 avenue de la routourne Angers');
SELECT * from societe;
INSERT INTO CAMPAGNE VALUES ('NE025' ,'Nespresso-Clooney', 101 ,'Café','MM50'),
                           ('P208P' , '208-Pinocchio' , 120 , 'voiture' , 'TOUS'),
                           ('BA75' , 'Le monde bouge' ,102 , 'Banque' , 'MM50' );
SELECT * FROM campagne;
INSERT INTO spot VALUES ('NS1' , 'Rencontre au bar' , 135 ,'NE025'),
                        ('NS2' , 'Soirée' , 115 , 'NE025'),
                        ('P12', 'Mobile' , 60 ,'BA75' ),
                        ('P13', 'Premier emploi' , 75 , 'BA75'),
                        ('P14' , 'Sejour etranger' ,45 , 'BA75' );

INSERT INTO TARIF VALUES ('TF1','SOIR' , 500),
                         ('TF1','DEBSOIR' ,400),
                         ('FRANCE2','JOUR' , 50), 
                         ('FRANCE3','JOUR',50), 
                         ('FRANCE3' , 'DEBSOIR', 200);
INSERT INTO programmation VALUES ('NS1','TF1','SOIR','18/02/17'),
                                 ('NS1' , 'FRANCE3' , 'JOUR' , '20/02/17'),
                                 ('NS2' , 'TF1' , 'DEBSOIR' , '20/02/17'),
                                 ('P12','TF1' , 'DEBSOIR', '19/02/17' ),
                                 ('P13', 'TF1','DEBSOIR' , '20/02/17'),
                                 ('P13' , 'FRANCE3' ,'DEBSOIR' ,'20/02/17' );
select * from programmation;
SELECT * from spot ; 
SELECT * from campagne;
SELECT * FROM TARIF;

CREATE TABLE ESSAI (Ville VARCHAR(50) , Num INTEGER PRIMARY KEY , Region VARCHAR(50));
CREATE SEQUENCE alpha MINVALUE 49 ;
INSERT INTO ESSAI values ('Angers' , nextval('alpha') ,'PAYS DE LA LOIRE '),
                         ('CERGY' , nextval('alpha'), 'ILE DE FRANCE'),
                         ('Toulon', nextval('alpha'), 'PACA');

SELECT * FROM essai;
UPDATE ESSAI 
SET Num = Num + 3 where ville ='CERGY' ; 
SELECT * FROM essai;

ALTER TABLE ESSAI add classement SERIAL ; 


CREATE TABLE PREFERE AS (SELECT * from essai where ville in ('Angers' ,'Toulon'));
SELECT * FROM prefere;
CREATE VIEW PREFERA AS (SELECT * from essai where ville in ('Angers' ,'Toulon'));
UPDATE ESSAI SET num=25 where ville='Angers'; 
SELECT * from  prefera ; 
ALTER TABLE TARIF drop constraint beta ; 


ALTER TABLE TARIF ADD constraint beta  
CHECK (Média in ('TF1' ,'FRANCE2','FRANCE3','CANAL+','FRANCE5','M6','ARTE', 'NT1' , 'W9'));

UPDATE SPOT SET libellé = 'Rencontre en soirée' where codespot='NS2';*/
INSERT INTO SPOT (Codespot,Libellé,Codecamp) SELECT 'NS3', Titre , Cible From campagne where Codesoc=101; 



  



