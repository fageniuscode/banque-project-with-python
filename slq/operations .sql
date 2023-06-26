
CREATE TABLE operations(
   idOperation INTEGER  NOT NULL PRIMARY KEY 
  ,idCompte INTEGER  NOT NULL
  ,dateOperation date DATE
  ,libelleOperation VARCHAR(255) NOT NULL      
  ,montant        NUMERIC(8,2) NOT NULL
);

INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (1,2,"2017-01-01","Prélévement automatique",-131.58);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (2,2,"2017-01-01","Facture carte",-185.31);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (3,2,"2017-01-01","Virement",-203.39);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (4,3,"2017-01-01","Encaissement chèque ",535370);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (5,3,"2017-01-01","Virement",724.98);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (6,4,"2017-01-01","Prélévement automatique",-196.93);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (7,5,"2017-01-01","Facture carte",-109.6);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (8,5,"2017-01-01","Encaissement chèque", 345264);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (9,6,"2017-01-01","Virement",1420.22);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (10,3,"2017-01-01","Encaissement chèque", 661413);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (11,4,"2017-01-011","Facture carte",-66.21);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (12,6,"2017-01-01","Facture carte",-67.51);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (13,7,"2017-01-013","Facture carte",-189.53);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (14,8,"2017-01-01","Facture carte",-4.54);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (15,9,"2017-01-01","Facture carte",-128.07);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (16,10,"2017-01-01","Facture carte",-137.58);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (17,12,"2017-01-01","Facture carte",-169.88);
INSERT INTO banque.operations(idOperation,idCompte,dateOperation,libelleOperation,montant) VALUES (18,11,"2017-01-01","Encaissement chèque", 504828);
