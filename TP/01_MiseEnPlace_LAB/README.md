# Tutorial 1 Mise en place et Visite du lab. 
## Table des matières
- [Objectifs](#objectifs)  
- [Ressources](#ressources)
- [Pré-Requis](#pré-requis)  
## Objectifs  
- Mettre en place le laboratoire permettant d'utiliser Ansible sur Google Shell.
- Découvrir le lab et l'infrastructure.
- S'approprier l'usage de google Shell terminal et éditeur.
- Savoir sauvegarder son travail.
- Contrôler l'environnement d'execution du lab.	
## Ressources
- Environnement 
- Temps : 45 mn.
## Pré-Requis
- Avoir un compte Google (gmail par exemple) 
    [créer un compte GMAIL](https://support.google.com/mail/answer/56256?hl=fr)
- Accéder à internet.
- Chrome 

## Énoncé  
1. se Connecter sur le [playGround de DiveInto](https://diveinto.com/p/playground)  
![picture 1](../../images/7ffe3c8d25c328686238ec595923c5fe41a57a3b7745a323ec88a5e77a3ccb1a.png)  
![picture 2](../../images/7f2b4d8c8da5f4d3446c0d1654326f60239e4bc20da736acc3b8297ce0ae3476.png)  
![picture 3](../../images/75cf010d097279ecd617f7d0827635497e415c8fa5e8d80c144468df3ab02062.png)  

1. désactiver le mode "éphémère" pour conserver vos travaux entre deux sessions.  
![picture 4](../../images/1141068da53df76d751e30b5914229ac648a00e7c1592cef91f08924a25b75b8.png)  
![picture 6](../../images/9dd0dec6aa544d22583f3f6ff858a0cad3580a40572ffc8ccc676da9cc957663.png)  
1. lancer les 3 scripts  
![picture 8](../../images/cf296d934e826e84851da6578934d1ab73659aa7cd8d68963d1716677281fdf8.png)  
jusqu'au message de fin ....  
![picture 9](../../images/d299326d52bce6034f9f9d46e61f24318453e1b10494d9b6a8b7006081960f3e.png)  
Nous avons créé un environnement complet 7 machines sous linux.
et les 7 machines "linux" sont lancées. 
```mermaid
graph TD;
    ubuntu-c-->centos;
    ubuntu-c-->ubuntu;
    centos-->centos1;
    centos-->centos2;
    centos-->centos3;
    ubuntu-->ubunt1;
    ubuntu-->ubunt2;
    ubuntu-->ubunt3;
```  
1. Ouvrir l'interface web  
![picture 10](../../images/b40cad2235b20a6c5b4772f0ae5e0c01b9311d5f7d83a27adf9276aaaeff4ba2.png)  
1. Ouvrir un shell sur le poste de contrôle (control node)  
![picture 11](../../images/def6b7c6e72206c8bdd67464a0e286b12c40bfcd0f7231dd37a9718da4f23713.png)  
profil : ansible et mot de passe : password  
![picture 12](../../images/8e9b7005f84bfca8958281ba832156f78125048d8dd7a334c2179aac84a38f5b.png)  
1. cloner le dépôt GIT  "ansibleMelodie"  

`git clone https://github.com/novy400/ansibleMelodie.git`  
![picture 13](../../images/bb085135e32b1ff44736423bc12d91fd4dc2d69ea13b68e5e25e61861e8651e4.png) 

vous pouvez faire un copie/coller (Ctr+C/ctrl+maj+V) mais cela rajoute des caractères à supprimer.
- pour verifier `ls`   

## Consultation d'un fichier
1. retourner le cloud shell DiveINTO et lancer l’éditeur  
![picture 24](../../images/646fd4976a23ad7f39308168e71c2b986caa1a70f9780d0c1f547d4969363c2c.png)  

![picture 14](../../images/2b52b084e35690234d76819ce60d4c633d2d1d67cdcabb0f19fc065978b25641.png)  
1. ouvrir le fichier README.MD du noeud de contrôle ubuntu-c 
![picture 25](../../images/de16a500cca1ea1e49099a69b02e81f197a77a9bdf40bcd515d98082c3e386d2.png)  
![picture 26](../../images/23ff4406d01317323b1bb54c7c7ca2890a05897cca9cbeeeb40cc31aaefbd3eb.png) 
![picture 28](../../images/a67a66423e45b1a495f3f891a63727db896dfe224cdb2fe7708b7d53c3aafaed.png)  
![picture 29](../../images/b8ce45732a918713eb4820bedf58ece64f64ce4d10fe4477841a02b7ab0d779f.png)  
![picture 30](../../images/15e7e5cbdc33ce1e53631ba48639639ae0a3a7c84ed185b9d567962550b60f82.png)  

/home/\<votreCompte\>/diveintoansible-lab/ansible_home/ubuntu-c/ansible/ansibleMelodie/README.md

![picture 15](../../images/03016ede7c979a3f72078c03f6fa753462fd6dc119c08170ad8b8e56fc5471b5.png)  

## Création et edition d'un fichier 
1. creation d'un dossier de travail \<myWork\>  
![picture 31](../../images/77d192056e856e44cf16ad7bf1a320cfec6657570f1ba4cf870f58aec39f788e.png)  
 

🧐 penser à vérifier le dossier !  
![picture 33](../../images/559781e23eb8abaeae3a48f9ceb62805307dd0445cba95d866840ee03e7513b2.png)  

1. Création du fichier \<test.txt\>  
![picture 34](../../images/81ffa791d53cafd22b35acc3140652924b676856f4dbcbdd8550343ca2a1425c.png)  
![picture 37](../../images/6a3ec386b53dc2cf45d3a9224fe718ef5c9b1d334bdc70bb81e3c836dc039cf1.png)  
- 😉libre cours à votre inspiration !  
![picture 38](../../images/867ca592336f85c9037fc325d755621a07094fced3f77532d327effe27e10b04.png)  

- contrôle dans ubuntu-c
    1. Ouvrez la console d'ubuntu-c
    ![picture 39](../../images/05912e7204c2f523b30a2d1c65d41940becd2c783bdc6efa835d8de766444b3a.png)  
    1. tapez dans le shell  
    `cat ~/ansibleMelodie/myWork/test.txt`
![picture 40](../../images/e190085e83b7c6182d2096b48968a12d98e8ee4a92aa634bb11a070d9951bcf5.png)  
 

## Découvrons notre environnement 
Nous avons créé un environnement complet 7 machines sous linux.
```mermaid
graph TD;
    ubuntu-c-->centos;
    ubuntu-c-->ubuntu;
    centos-->centos1;
    centos-->centos2;
    centos-->centos3;
    ubuntu-->ubunt1;
    ubuntu-->ubunt2;
    ubuntu-->ubunt3;
```
la machine **ubuntu-c** sera notre noeud de contrôle.  
Nous travaillerons sur celui-ci pour executer des taches sur les autres machines via ansible.  
Ansible est installé.  
Et depuis la console d'ubuntu-c nous pouvons accéder aux autres machines via ssh en utilisant une clé (sans saisir le profil et le mot de passe)
### Testons une connexion SSH  
1. se connecter à centos1  
    - tapez dans le shell d'ubuntu-c  
        `ssh centos1`  
    - répondez au message par yes   
        ![picture 42](../../images/16c0e9bc3050b13add0a6bd31b1ddc946ee095dfaa7724504804ae776801b933.png)  
    - vous êtes connecté sur Centos1 ! 
1. se déconnecter de centos1   
    - tapez dans le shell d'ubuntu-c   
        `exit`
    - vous êtes de retour sur ubuntu-c !  
        ![picture 43](../../images/2750de419eeab5d38c2a6f74c1f74eae76d952ba60f35d24b54491fc6f3b6309.png)  
  
### Vérifions la présence ansible  sur ubuntu-c  
`ansible --version`
![picture 44](../../images/e282c2b4285d0db4f42a20af98120e6b5fa85436b43e77bf629a761b84185e8c.png)  

### Fermons l'environnement
⚠ Nous avons des quotas d'utilisation (50 heure/semaine je crois)
Il est donc important de bien fermer sa session le soir par exemple....

1. fermer les consoles linux  
![picture 17](../../images/c2d037baae22adb3ca90c6d090816ca25b0341e0e1273deaf71da32034720794.png)  
1. fermer les fenêtres du lab
![picture 45](../../images/65ca76f131ca0b58857f51f3dbdc450b2ffc4b27b0a556b1ee69c2ab7420a0aa.png)  

1. arrêter les machines (docker ) via la touche CTRL-C dans le cloud shell
    - ouvrez le cloud shell
    ![picture 46](../../images/1d8e0a37443c3268d60b5e75cd25053b96336095e8ca60db038e7df123848a90.png)  
    - placer dans le shell en cliquant dans la zone noire du shell  
    ![picture 47](../../images/164b39dd228366cb85ba263399ed81bdf6cd931089247676c3e7dbf147e95ecf.png)  
    - tapez sur les touches CTRL-C
    ![picture 20](../../images/9999b4c0812c58c8f4a94a177b15b851cd6e546fdbd1703d238fb63e95f1f56e.png)  

1. puis fermer l’éditeur et le terminal  
![picture 19](../../images/4a7d66029f09ef07932cca53c99c158b58f0475da9f6d54e27ff182c1ed90983.png)  
![picture 21](../../images/de8913f53dca64e2accd82c9bc0794d4a95ddd2e6fd468fd95a9fa8ba39c5894.png)  
### reprendre le travail en rouvrant un session  
1. [cloud shell](https://shell.cloud.google.com/?show=terminal)  
1. relancer le lab
    - tapez la commande suivante dans le terminal  
    `cd ${HOME}/diveintoansible-lab; bin/docker-compose up --quiet-pull`
1. rouvrez notre fichier test.txt  
![picture 48](../../images/8c37e22674c9f1305782384faf98ec4cb30728023de5b1d5ecce5dcf5b5da107.png)  
Ouf il est bien là ! 

## voir son quota d’utilisation  
![picture 23](../../images/96710428b4c3ad8a028273ee15cd2fa84be0a880ef4eb029843ab60694a89b1a.png)  

![picture 22](../../images/ecccb26685f64d9ae6ca57478ee2a6e1165292d5dbbcec996f9e958afe698e72.png)  

## Conclusion et feed-back  

## Correction  



# 💡💡💡💡Idées 
- 