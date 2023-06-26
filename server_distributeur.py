import socket

adresseIP = "127.0.0.1"  # Ici, le poste local
port = 50000  # Se connecter sur le port 50000

while True:
    client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client.connect((adresseIP, port))
    print("Bienvenue dans la banque Python")
    idCompte = input("Entrez votre numéro de compte : ")
    pin = input("Entrez votre code PIN : ")
    client.send(("TESTPIN " + idCompte + " " + pin).encode("utf-8"))
    reponse = client.recv(255).decode("utf-8")

    if reponse == "TESTPIN OK":
        print("Bienvenue ! ")
        print("  Opérations : ")
        print("1 - Dépôt")
        print("2 - Retrait")
        print("3 - Transfert")
        print("4 - Historique des opérations")
        print("5 - Solde du compte")
        operation = input("Entrez l'opération que vous souhaitez : ")

        if operation == "1":
            montant = input("Entrez le montant à déposer : ")
            client.send(("DEPOT " + idCompte + " " + montant).encode("utf-8"))
            reponse = client.recv(255).decode("utf-8")
            if reponse == "DEPOT OK":
                print("Dépôt effectué")
            else:
                print("Dépôt refusé")

        elif operation == "2":
            montant = input("Entrez le montant à retirer : ")
            montant = str(-float(montant))  # Le montant doit être négatif
            client.send(("RETRAIT " + idCompte + " " + montant).encode("utf-8"))
            reponse = client.recv(255).decode("utf-8")
            if reponse == "RETRAIT OK":
                print("Retrait effectué")
            else:
                print("Retrait refusé")

        elif operation == "3":
            montant = input("Entrez le montant à transférer : ")
            nocompteDestination = input("Entrez le numéro de compte du bénéficiaire : ")
            client.send(("TRANSFERT " + idCompte + " " + nocompteDestination + " " + montant).encode("utf-8"))
            reponse = client.recv(255).decode("utf-8")
            if reponse == "TRANSFERT OK":
                print("Transfert effectué")
            else:
                print("Transfert refusé")

        elif operation == "4":
            client.send(("HISTORIQUE " + idCompte).encode("utf-8"))
            historique = client.recv(4096).decode("utf-8").replace("HISTORIQUE ", "")
            # On transfère un grand volume de données, donc augmentons la taille du buffer
            print(historique)

        elif operation == "5":
            client.send(("SOLDE " + idCompte).encode("utf-8"))
            solde = client.recv(4096).decode("utf-8").replace("SOLDE", "")
            print("Le solde du compte est de " + solde)

    else:
        print("Vos identifiants sont incorrects")

    print("Au revoir !")
    client.close()
