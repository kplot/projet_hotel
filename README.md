
     ,-----.,--.                  ,--. ,---.   ,--.,------.  ,------.
    '  .--./|  | ,---. ,--.,--. ,-|  || o   \  |  ||  .-.  \ |  .---'
    |  |    |  || .-. ||  ||  |' .-. |`..'  |  |  ||  |  \  :|  `--, 
    '  '--'\|  |' '-' ''  ''  '\ `-' | .'  /   |  ||  '--'  /|  `---.
     `-----'`--' `---'  `----'  `---'  `--'    `--'`-------' `------'
    ----------------------------------------------------------------- 
# Projet Hôtels

## Description
Ce projet à pour but de proposer une solution clée en main de gestion d'hôtel

## Features à mettre en place
    ###1. Authentification 
        gem : devise
    ###2. Roles (user, admin, superadmin)
        à dévelloper
    ### 3. Recherche
        gem : ransack    
    ### 4. Paiement
        gem : stripe (voir money-rails) + création compte
    ###5. Service de mail de confirmation
        gem : mailgun + création compte
    ###6. Formulaire de contact 
        à dévelloper
    ###7. Administration (nouvelles chambre, etc.....)
        gem : administrate
    ###8. Table de configurations pour la home page
        à dévelloper
    ###9. Géolocalisation
        API : google

## Commandes clés
Création branche    : git checkout -b [nom de la branche]
Changement branche  : git checkout

Création commit     : git add.
                      git commit -m 'nom du commit'
                      git push origin master
                                      develop
                                      feature/[nom de la feature]