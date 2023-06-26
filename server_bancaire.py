import socket
import mysql.connector
import threading

# Créer une classe pour le serveur
class ServeurBanque:
    def __init__(self):
        self.serveur = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.serveur.bind(('', 50000))
        self.serveur.listen(5)
        self.threadsClients = []

    def connexionBaseDeDonnees(self):
        baseDeDonnees = mysql.connector.connect(host="localhost", user="root", password="passer@123", database="banque")
        curseur = baseDeDonnees.cursor()
        return baseDeDonnees, curseur

    def testpin(self, idCompte, PIN):
        baseDeDonnees, curseur = self.connexionBaseDeDonnees()
        curseur.execute("SELECT PIN FROM comptes WHERE idCompte = %s", (idCompte,))
        pincompte = curseur.fetchone()[0]
        baseDeDonnees.close()
        if PIN == pincompte:  # Vérifier le code PIN
            return True
        else:
            return False

    def solde(self, idCompte):
        baseDeDonnees, curseur = self.connexionBaseDeDonnees()
        curseur.execute("SELECT solde FROM comptes WHERE idCompte = %s", (idCompte,))
        soldeCompte = curseur.fetchone()[0]
        baseDeDonnees.close()
        return soldeCompte

    def retrait(self, idCompte, montant):
        # Le montant est négatif
        baseDeDonnees, curseur = self.connexionBaseDeDonnees()
        montant = float(montant)
        soldeCompte = self.solde(idCompte)
        if float(soldeCompte) < abs(montant) or montant >= 0:
            baseDeDonnees.close()
            return False
        else:
            nouveauSolde = float(soldeCompte) + montant
            curseur.execute("UPDATE comptes SET Solde = %s WHERE idCompte = %s", (nouveauSolde, idCompte))
            curseur.execute("INSERT INTO operations (dateOperation, idCompte, libelleOperation, montant) "
                            "VALUES (CURDATE(), %s, 'Retrait', %s)", (idCompte, montant))
            baseDeDonnees.commit()
            baseDeDonnees.close()
            return True

    def transfert(self, idCompteSource, idCompteDest, montant):
        # Conversion des valeurs en nombres à virgule flottante
        montant = float(montant)
        baseDeDonnees, curseur = self.connexionBaseDeDonnees()
        soldeCompteSource = self.solde(idCompteSource)
        soldeCompteDest = self.solde(idCompteDest)
        if float(soldeCompteSource) < montant or montant <= 0:
            baseDeDonnees.close()
            return False
        else:
            nouveauSoldeSource = float(soldeCompteSource) - montant
            nouveauSoldeDest = float(soldeCompteDest) + montant
            # Utilisation de paramètres de substitution dans la requête
            curseur.execute("UPDATE comptes SET solde = %s WHERE idCompte = %s", (nouveauSoldeSource, idCompteSource))
            curseur.execute("UPDATE comptes SET solde = %s WHERE idCompte = %s", (nouveauSoldeDest, idCompteDest))
            # Utilisation de paramètres de substitution dans la requête
            curseur.execute("INSERT INTO operations (dateOperation, libelleOperation, idCompte, montant) "
                "VALUES (NOW(), 'Transfert vers', %s, %s)", (idCompteDest, montant))

            # Utilisation de paramètres de substitution dans la requête
            curseur.execute("INSERT INTO operations (dateOperation, libelleOperation, idCompte, montant) "
                "VALUES (NOW(), 'Transfert depuis', %s, %s)", (idCompteSource, montant))
            
            baseDeDonnees.commit()
            baseDeDonnees.close()
            return True





    def depot(self, idCompte, montant):
        # Le montant est positif
        baseDeDonnees, curseur = self.connexionBaseDeDonnees()
        montant = float(montant)
        soldeCompte = self.solde(idCompte)
        nouveauSolde = float(soldeCompte) + montant
        curseur.execute("UPDATE comptes SET Solde = %s WHERE idCompte = %s", (nouveauSolde, idCompte))
        curseur.execute("INSERT INTO operations (dateOperation, idCompte, libelleOperation, montant) "
                        "VALUES (CURDATE(), %s, 'Dépôt', %s)", (idCompte, montant))
        baseDeDonnees.commit()
        baseDeDonnees.close()
        return True

    def historique(self, nocompte):
        baseDeDonnees, curseur = self.connexionBaseDeDonnees()
        curseur.execute("SELECT dateOperation, libelleOperation, montant FROM operations WHERE idCompte = %s "
                        "ORDER BY dateOperation DESC LIMIT 10", (nocompte,))
        historiqueCSV = "\"dateOperation\";\"libelleOperation\";\"montant\"\n"
        for ligne in curseur.fetchall():
            historiqueCSV += "\"" + str(ligne[0]) + "\";\"" + str(ligne[1]) + "\";\"" + str(ligne[2]) + "\"\n"
        return historiqueCSV

    def instanceServeur(self, client, infosClient):
        adresseIP = infosClient[0]
        port = str(infosClient[1])
        print("Instance de serveur prêt pour " + adresseIP + ":" + port)
        actif = True
        while actif:
            message = client.recv(255).decode("utf-8").upper().split(" ")
            if not message:
                break
            pret = False
            if message[0] == "TESTPIN":
                if len(message) == 3 and self.testpin(message[1], message[2]):
                    client.send("TESTPIN OK".encode("utf-8"))
                    message = client.recv(255).decode("utf-8").upper().split(" ")
                    if message[0] == "RETRAIT":
                        if len(message) == 3 and self.retrait(message[1], message[2]):
                            client.send("RETRAIT OK".encode("utf-8"))
                        else:
                            client.send("RETRAIT NOK".encode("utf-8"))
                    elif message[0] == "DEPOT":
                        if len(message) == 3 and self.depot(message[1], message[2]):
                            client.send("DEPOT OK".encode("utf-8"))
                        else:
                            client.send("DEPOT NOK".encode("utf-8"))
                    elif message[0] == "SOLDE":
                        if len(message) == 2:
                            soldeCompte = self.solde(message[1])
                            client.send(("SOLDE " + str(soldeCompte)).encode("utf-8"))
                        else:
                            client.send("ERROPERATION".encode("utf-8"))
                    elif message[0] == "TRANSFERT":
                        if len(message) == 4 and self.transfert(message[1], message[2], message[3]):
                            client.send("TRANSFERT OK".encode("utf-8"))
                        else:
                            client.send("TRANSFERT NOK".encode("utf-8"))
                    elif message[0] == "HISTORIQUE":
                        if len(message) == 2:
                            historiqueCSV = self.historique(message[1])
                            client.send(("HISTORIQUE " + historiqueCSV).encode("utf-8"))
                        else:
                            client.send("ERROPERATION".encode("utf-8"))
                    else:
                        client.send("ERROPERATION".encode("utf-8"))
                else:
                    client.send("TESTPIN NOK".encode("utf-8"))
            else:
                client.send("ERROPERATION".encode("utf-8"))
        print("Connexion fermée avec " + adresseIP + ":" + port)
        client.close()

    def start(self):
        while True:
            client, infosClient = self.serveur.accept()
            t = threading.Thread(target=self.instanceServeur, args=(client, infosClient))
            t.start()
            self.threadsClients.append(t)

# Créer une instance du serveur et le démarrer
serveur = ServeurBanque()
serveur.start()
