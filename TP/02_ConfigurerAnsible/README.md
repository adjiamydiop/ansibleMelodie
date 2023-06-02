# Tutorial 2 Configuration d'Ansible.  
## Table des matières
- [Objectifs](#objectifs)  
- [Ressources](#ressources)
- [Pré-Requis](#pré-requis)  
## Objectifs  
Pour notre premier TP, nous allons travailler avec un template de projet. (simple cad sans utiliser les rôles).
Cela nous permettra de nous familiariser avec les concepts clés d'Ansible.

Ainsi nous allons :  
- Éditer un fichier de configuration.  
- Tester notre configuration avec la commande ansible-config.  
- Écrire un fichier d'inventaire pour cataloguer notre infrastructure.  
- Tester notre inventaire avec la commande ansible-inventory.  
- Utiliser le module Ping en mode commande pour tester notre inventaire.  
- Utiliser le module Debug en mode commande pour tester nos variables d'inventaire.  

## Ressources
- Environnement 
- Temps : 60 mn.
## Pré-Requis
- avoir mis en place l'environnement dans cloud shell.  
    [TP01 - Mise en place du Lab](../01_MiseEnPlace_LAB/README.md01_MiseEnPlace_LAB/README.md)

## Énoncé  
## Etape 1 Initier le projet TP01 
- dans l'éditeur créer un nouveau dossier dans myWork du control-node ubuntu-c.
Ce sera notre repertoire de travail pour ce TP.
### Etape 2 Configurer Ansible.
On peut spécifier des preferences de configuration dans le fichier ansible.cfg.  
Celui ci peut se retrouver à plusieurs endroits,mais il est fortement conseillé de le placer dans le repertoire du projet.  
1. tester la configuration actuelle.  
    - Nous allons utiliser la commande ansible-config pour connaître la configuration. 
    - Ouvrer un terminal sur Ubuntu-c avec le profil ansible/password.
    - Placer vous dans notre repertoire de travail.  
    `cd ~/ansibleMelodie/myWork/TP01`
    - afficher le fichier de configuration utilisé.  
    `ansible-config --version`
    - afficher la configuration utilisée.  
    `ansible-config view`
1. copiez le fichier ansible.cfg  du projet template via la commande dans le terminal.   
`cp ../../templates/ansible_simple/ansible.cfg ansible.cfg`
1. visualiser ce fichier dans l'éditeur.
    - Nous conservons les valeurs par défaut.
    - Nous ne contrôlons pas l'empreinte de la cible lors d'une connexion SSH.  
1. tester la configuration actuelle.  
    - Nous allons utiliser la commande ansible-config pour connaître la configuration. 
    - afficher le fichier de configuration utilisé.  
    `ansible-config --version`
    ![picture 2](../../images/3c4f843ca74f7c4d7a25ddf1fe03b9367d9acc94916a45388bf9788637c20c61.png)  

    - afficher la configuration utilisée.  
    `ansible-config view`
    ![picture 3](../../images/45981c4bece6bb896cef3522a80b765cd5dd3d6d1a346a82ec2408ea3b326120.png)  


### Etape 3 Configurons nos machines hôtes.  
Le fichier d'inventaire permet de cataloguer notre infrastructure.  
Il permet de lister les différentes machines hôtes que l'on veut administer.  
1. copiez le fichier 00_inventory.yml du projet template via la commande dans le terminal.   
`cp ../../templates/ansible_simple/00_inventory.yml 00_inventory.yml`
1. Affichez le contenu du fichier 00_inventory.yml  
1. tester la configuration actuelle de nos machines hôtes.  
    - Nous allons utiliser la commande ansible-inventory pour connaître la configuration. 
    - afficher les hôtes inscrits dans l'inventaire.  
      `ansible-inventory -i 00_inventory.yml --list --yaml`  
      ou 
      ✔ `ansible-inventory -i 00_inventory.yml --graph`  
![picture 4](../../images/eb096971c64fe67e9fa432a5c62d5d3e45716d9b1490f943f8c27c7d1373f8fe.png)  
1. tester la connexion vers nos machines hôtes.
    - Nous allons le module ping pour se connecter à nos hôtes.  
    - Consulter la [documentation Ansible](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/ping_module.html)  
    - Ce module envoie un ping à l'hôte et reçoit en retour un pong si tout va bien.
    - faire du ping/pong avec les hôtes inscrits.  
      `ansible -i 00_inventory.yml all -m ping`  
      ![picture 5](../../images/310a9c5fec4aec16064cf483b1f711107079a168a47e603a904145a64349d82a.png)  
        - nous pouvons spécifier un hôte particulier 
       `ansible -i 00_inventory.yml centos1 -m ping`
        - un group  
       `ansible -i 00_inventory.yml ubuntu -m ping` 
Comme vous pouvez le remarquer nous n'avons pas paramétré toutes les machines hôtes.  
Nous allons le faire maintenant.
1. Modifier le fichier d'inventaire pour ajouter les hôtes manquants à savoir 
    - ubuntu2 et unbuntu3
    - centos2 et centos3
1. Tester votre configuration  
[correction](../02_ConfigurerAnsible/TP/correction/01/00_inventory.yml)


### Etape 3 Configurons les variables de nos machines hôtes.
Le fichier d'inventaire permet de cataloguer notre infrastructure.
Il permet de lister les différentes machines hôtes que l'on veut administer.
Il permet aussi de paramétrer nos actions sur les hôtes au moyen de variables.
Ces variables peuvent se trouver dans le fichier d'inventaire.
Mais en général on préfère les stocker dans les repertoires group_vars et host_vars.
1. Ajout d'une variable pour tous les hôtes.
    1. via l’éditeur créer un dossier \<group_vars\> et un sous-dossier all  
    ![picture 6](../../images/25d9a84873110759e43fc5fec90f038e20b4c68aa8c23b5ba35fcbcf134c75e7.png)  
    1. dans le dossier all créer un fichier variables.yml
    1. dans ce fichier inscrivez une variable  
        - nom : maVariable
        - valeur : all 
    1. sauvegarder     
    1. tester la configuration actuelle de nos machines hôtes.  
        - Nous allons utiliser la commande ansible-inventory pour connaître la configuration. 
        - afficher les hôtes inscrits et leurs variables.  
        `ansible-inventory -i 00_inventory.yml --graph --vars`  
        ![picture 7](../../images/1914d89e9d02304c68282269c75f885ade4e72099a9b72143e4cebfb8fe03076.png)  
    1. tester les variables transmises à nos machines hôtes.
        - Nous allons le module debug pour se verifier sur nos hôtes.
        - Consulter la [documentation Ansible](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/debug_module.html)      
        - Ce module permet d'afficher le contenu d'une variable sur une machine hôtes ou un message utilisant un langage de templates jinga2.
        - afficher le contenu de maVariable sur les hôtes inscrits.  
        `ansible -i 00_inventory.yml all -m debug -a 'var=maVariable'`  
        ![picture 8](../../images/855242d95f4961acac451af2af02a9471f6b5a1a6b583029f360385e9a8c2846.png)  
        - afficher un message avec le contenu de maVariable sur les hôtes inscrits.  
        `ansible -i 00_inventory.yml all -m debug -a "msg='le contenu de ma variable est {{ maVariable }}.'"`  
        ![picture 9](../../images/655b1adce98e3f0e54178abae025826df9c005a97b5e7b94d6b3a03cf49d5542.png)  
1. Ajouter de ma même façon une variable pour tous les hôtes du group centos.  
   - nom : maVariable  
   - valeur : centos  
   1. créer un dossier centos dans group_vars et un fichier maVariable.yml dans centos.  
    noter que le nom du fichier n'a pas d'importance..  
   1. tester la configuration actuelle de nos machines hôtes.
   1. tester les variables transmises à nos machines hôtes.  
   [correction](../02_ConfigurerAnsible/TP/correction/02/')
1. Ajout d'une variable l'hôte ubuntu1.
    1. via l’éditeur créer un dossier \<host_vars\> et un sous-dossier ubuntu1  
    1. dans le dossier ubuntu1 créer un fichier variables.yml
    1. dans ce fichier inscrivez une variable  
        - nom : maVariable
        - valeur : ubuntu1
    1. sauvegarder  
    ![picture 10](../../images/2390c8f86de1c521f25d313108ace853e3106f3277013dd25d27ea045aea47a1.png)  
   1. tester la configuration actuelle de nos machines hôtes.
   ![picture 11](../../images/b0798186aa257f831daa1df04ed411d27b51ff7252bf7b43248316453d3fd62c.png)  

   1. tester les variables transmises à nos machines hôtes.   
    ![picture 12](../../images/0d17346b3fc122ffe6c1405ac9d3bd325263211153e651045a30aecd57047609.png)  
1. Ajouter de ma même façon une variable pour l'hôte centos2.  
   - nom : maVariable  
   - valeur : centos2  
   1. créer un dossier centos2 dans host_vars et un fichier maVariable.yml dans centos2.  
    noter que le nom du fichier n'a pas d'importance..  
   1. tester la configuration actuelle de nos machines hôtes.
   1. tester les variables transmises à nos machines hôtes.  
   ![picture 13](../../images/0b540a556460042b6e963c43e51674530fa71b76d32ecc2f0ad8ba7cad5d1265.png)  
    [correction](../02_ConfigurerAnsible/TP/correction/03/')
   1. ajouter une variable mavariable2 avec le contenu que vous voulez dans le fichier maVariable de centos2 et retester. 
   ![picture 14](../../images/fe891e231b6e595a5d5908ba854c7af490be5b361abefea8c195b72d11b833df.png)  

## Conclusion et feed-back  

## Correction  



# 💡💡💡💡Idées 
- 