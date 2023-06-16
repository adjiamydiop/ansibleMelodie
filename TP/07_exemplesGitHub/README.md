# Tutorial 7 Utiliser les exemples de Github.    
## Table des matières
- [Objectifs](#objectifs)  
- [Ressources](#ressources)
- [Pré-Requis](#pré-requis)  
## Objectifs  
Dans ce TP ,nous allons utiliser les exemples fournis avec la collection Ibmi ansible.Ansible sur notre IBMi.
Pour rappel :
- [site Github](https://github.com/IBM/ansible-for-i/tree/devel)
- [doc reference](https://ibm.github.io/ansible-for-i/index.html)
Ainsi nous allons : 
- utiliser l'exemple [ibmi-sysval-sample.yml](https://github.com/IBM/ansible-for-i/blob/devel/playbooks/ibmi-sysval-sample.yml) 
- utiliser l'exemple [ibmi-cl-command-sample.yml](https://github.com/IBM/ansible-for-i/blob/devel/playbooks/ibmi-cl-command-sample.yml) en utilisant une variable d'inventaire pour le nom de la bibliothéque
- Analyser les résultats

⚠⚠ attention Nous allons utiliser des ressources que nous n'avons pas écrites ! 
Il est trés utile de lire ces ressources avant de les lancer sur une machine mais si celle_çi se trouve être une machine de test.

## Ressources 
- Environnement 
- Temps : 60 mn.
## Pré-Requis
- avoir configurer Ansible pour travailler avec notre l'environnement sur l'IBMI.  
    [TP05 - Hello IBMi](../05_helloIBMi/README.md)  
- avoir installer la collectionIBMi.  
    [TP06 - Du vrai IBMi](../06_duVraiIBMi/README.md)    



## Énoncé  
### Etape 1 créer le projet TP07 en dupliquant le dossier TP06
### Etape 2 ibmi-sysval-sample.yml.
1. Trouver l'exemple.
  - sur github.
  [site Github](https://github.com/IBM/ansible-for-i/tree/devel)
  ![picture 1](../../images/a7f27cb52884e76a84fbbb8ef0ab074a1b8cad520d9e80fc26c10ba0536198a1.png)  
![picture 2](../../images/28632d4730b44c532054cd524548f95d569fdffda551dffbbb32ab35e4089a72.png)  
![picture 3](../../images/fb1f7197c34559b5c90cf64aaf17b9c01f78ddac7451565c7fa95a73993eeb8a.png)  

  - sur la machine dans la collection.
  Utiliser le lien défini sur la collection dans le browser IFS de C4I.
  ![picture 4](../../images/46c48feb8d0a6afe8427a663cc6a0bfdd7eccb8f99ef22c4183fe4152219ec49.png)  
![picture 5](../../images/ec5228e3581ff42bf4fad2f30b6de7353320feb051ecea83ec93ae9c2975b5d9.png)  
1. dupliquer le playbook dans votre projet si il vous convient.
plusieurs façons de faire copie du fichier via le browser IFS (clic droit su le fichier)
ou création d'un nouveau fichier dans le projet et CTRL-a CTRL-c sur la source et ctrl-a CTRL-V sur la cible 
![picture 6](../../images/025d4d81ec06e1f7c2a76b8e3adb1e550308fd78e85ab96e925832c7c0023175.png)  
![picture 7](../../images/780002b263f1fabba08fd9ef5a4dbfae4337cc7343a70ac14a21125b2327d792.png)  
![picture 8](../../images/5d42a4b2c93f464680172dfa4f11288712f89dc0af92717a0a98e98bc0799d22.png)  

1. Contrôler sa possible execution  
  - Lancer en check ,diff ...
    - diff
`ansible-playbook 30_controleValeursSystemes.yml -i 00_inventory.yml --diff` 
    -check diff
    `ansible-playbook 30_controleValeursSystemes.yml -i 00_inventory.yml --check` 
    modifier les valeurs testées dans le playbook pour qu'ils passent les controles.
    ⚠ NE PAS MODIFIER LES VALEURS SYSTEMES DE LA MACHINE !!!
  - Lancer pas à pas 
  `ansible-playbook 30_controleValeursSystemes.yml -i 00_inventory.yml --step`
1. ajouter la clause `ignore_errors: true` pour laisser passer les controles ko  
1. Lancer en global 
 `ansible-playbook 30_controleValeursSystemes.yml -i 00_inventory.yml`
 [correction](./TP/correction/01/)

### Etape 2 ibmi-cl-command-sample.yml.

objectif créer une bibliothèque avec un nom de la variable d'inventaire `nomLIBTravail` .
1. Trouver l'exemple.
  - sur github.
  [site Github](https://github.com/IBM/ansible-for-i/tree/devel)
  ![picture 1](../../images/a7f27cb52884e76a84fbbb8ef0ab074a1b8cad520d9e80fc26c10ba0536198a1.png)  
![picture 2](../../images/28632d4730b44c532054cd524548f95d569fdffda551dffbbb32ab35e4089a72.png)  
![picture 3](../../images/fb1f7197c34559b5c90cf64aaf17b9c01f78ddac7451565c7fa95a73993eeb8a.png)  

  - sur la machine dans la collection.
  Utiliser le lien défini sur la collection dans le browser IFS de C4I.
  
1. dupliquer le playbook dans votre projet si il vous convient.
plusieurs façons de faire copie du fichier via le browser IFS (clic droit su le fichier)
ou création d'un nouveau fichier dans le projet et CTRL-a CTRL-c sur la source et ctrl-a CTRL-V sur la cible 
![picture 6](../../images/025d4d81ec06e1f7c2a76b8e3adb1e550308fd78e85ab96e925832c7c0023175.png)  
![picture 7](../../images/780002b263f1fabba08fd9ef5a4dbfae4337cc7343a70ac14a21125b2327d792.png)  
![picture 8](../../images/5d42a4b2c93f464680172dfa4f11288712f89dc0af92717a0a98e98bc0799d22.png)  
1. ajouter la variable d'inventaire et modifier le playbook pour qu'il en tienne compte.
1. Contrôler sa possible execution  
  - Lancer en check ,diff ...
    - diff
`ansible-playbook 40_creationLibTravail.yml -i 00_inventory.yml --diff` 
    -check diff
    `ansible-playbook 40_creationLibTravail.yml -i 00_inventory.yml --check` 
    modifier les valeurs testées dans le playbook pour qu'ils passent les controles.
    ⚠ NE PAS MODIFIER LES VALEURS SYSTEMES DE LA MACHINE !!!
  - Lancer pas à pas 
  `ansible-playbook 40_creationLibTravail.yml -i 00_inventory.yml --step`
 
1. Lancer en global 
 `ansible-playbook 40_creationLibTravail.yml -i 00_inventory.yml`
 relancer 
 [correction](./TP/correction/02/) 
## Conclusion et feed-back  

## Correction  



# 💡💡💡💡Idées 
- 