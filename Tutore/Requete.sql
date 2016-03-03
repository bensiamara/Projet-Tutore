
SELECT AVG(Rang), IdLivre, C.Value FROM amzobjtag D, amztag C, amzlivreclassement A, amzclassement B WHERE A.IdLivre=D.IdObj AND D.TypeObj='Livre' AND D.IdTag=C.Id AND C.TypeTag = "NodeName" AND IdClassement=B.Id AND B.DateDebut >=2000 and B.DateDebut < 2001 group by C.Value order by AVG(Rang)
/*             fin  */

SELECT SUM(A.Rang) , C.Value FROM amzobjtag D, amztag C, amzlivreclassement A, amzclassement B WHERE A.IdLivre=D.IdObj AND D.TypeObj='Livre' AND D.IdTag=C.Id AND C.TypeTag = "NodeName" AND IdClassement=B.Id AND DAY(B.DateDebut) =1 and MONTH(B.DateDebut) =1 group by C.Value order by SUM(A.Rang)

/* requete qui remplace les nom des types */

UPDATE site
SET url = REPLACE(url, 'www.facebook.com', 'fr-fr.facebook.com')
WHERE url LIKE '%www.facebook.com%'


/* Recupérer le type des livres par ordre alphabétique */

 SELECT A.Value FROM  amztag A, amzobjtag B WHERE A.TypeTag="NodeName" AND B.TypeObj="Livre" AND A.Id=B.IdTag ORDER BY A.Value
 
 
 /* requet qui recupire les titre de livre de type simlaire */
 
 
 SELECT L.Titre, A.Value FROM amzlivre L, amztag A, amzobjtag B WHERE L.id = B.IdObj AND A.TypeTag="NodeName" AND A.Value LIKE '% 9 ans%' AND B.TypeObj="Livre" AND A.Id=B.IdTag ORDER BY A.Value

 /* requete qui recupire les type de livre qui ont dija entré dans le top 100 */ 
 
 
 SELECT A.Value FROM amzlivre L, amztag A, amzobjtag B, amzlivreclassement C WHERE L.id = B.IdObj AND A.TypeTag="NodeName" AND C.IdLive = L.Id AND B.TypeObj="Livre" AND A.Id=B.IdTag ORDER BY A.Value

//////////////

//////////////////