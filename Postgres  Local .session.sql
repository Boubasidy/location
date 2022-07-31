SELECT * FROM personnels;
SELECT nom , prnm , sx , datnais from personnels where trtmnt BETWEEN 1000 AND 10000;
SELECT nom , prnm , sx , trtmnt from personnels where trtmnt > ANY (select trtmnt from personnels where cdsrv = '05');
SELECT nom , prnm FROM personnels where Exists ( SELECT nom from personnels where trtmnt > 100000);
SELECT SUM(trtmnt) from personnels ; 
SELECT COUNT (nom ) from personnels ;
SELECT * from PERSONNEls;
SELECT sum(trtmnt) as number from personnels GROUP BY nom;
SELECT * from personnels ;
SELECT * froM services;
SELECT s.nom , count(p.nom) , count(p.dattit) from personnels p join services s on s.cdsrv = p.cdsrv 
           GROUP by s.nom;
SELECT s.nom , count(p.nom) , count(p.dattit) from personnels p join services s on s.cdsrv = p.cdsrv 
           GROUP by s.nom HAVING count(p.nom) IN (10 , 9);
SELECT nom , prnm , sx from personnels order by nom DESC , prnm ;
SELECT * FROM PERSONNELS;
SELECT POSITION('DETANTE' in nom) from personnels;
SELECT SUBSTRING(nom from 4 for 5) from personnels;
SELECT UPPER(nom) FROM personnels;
SELECT nom||prnm as BIBI from personnels;
SELECT nom , prnm , datnais from personnels where EXTRACT(day from datnais) > 6;
SELECT nom , prnm , sx , datnais , CASE
   WHEN trtmnt > 20000 and trtmnt <= 35000 THEN 'MINEUR'
   WHEN trtmnt<20000 THEN 'MAJEUR'
   ELSE 'ENFANT' END AS CLASSEMENT
   From personnels ;

SELECT nom , prnm , sx , datnais ,CASE 
  WHEN sx in ('1') ThEN 'MASCULIN'
  WHEN sx in ('2') THEN 'FEMININ'
  ELSE 'HOMO' END AS GENRE 
  FROM personnels;
SELECT nom , prnm from personnels where cdsrv in (select cdsrv from personnels where nom='DETANTE' and prnm ='Claude');
SELECT p1.nom , p1.prnm from personnels p1 join personnels p2 on p1.cdsrv = p2.cdsrv where p2.nom = 'DETANTE' and p2.prnm LIKE 'C%';
SELECT * from conges;
SELECT * from services ;
SELECT p.nom , p.prnm , c.cdsrv from personnels p RIGHT OUTER join services c on p.cdsrv = c.cdsrv ;
SELECT COUNT(*) from personnels; 
