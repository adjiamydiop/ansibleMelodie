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
- Temps : 30 mn.
## Pré-Requis
- Avoir un compte Google (gmail par exemple) 
    TODO: procedure de creation de compte google.
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
 les machines "linux" sont lancées.  
1. Ouvrir l'interface web  
![picture 10](../../images/b40cad2235b20a6c5b4772f0ae5e0c01b9311d5f7d83a27adf9276aaaeff4ba2.png)  
1. Ouvrir un shell sur le poste de contrôle (control node)  
![picture 11](../../images/def6b7c6e72206c8bdd67464a0e286b12c40bfcd0f7231dd37a9718da4f23713.png)  
profil : ansible et mote de passe : password  
![picture 12](../../images/8e9b7005f84bfca8958281ba832156f78125048d8dd7a334c2179aac84a38f5b.png)  
1. cloner le dépôt GIT  "ansibleMelodie"  
`git clone https://github.com/novy400/ansibleMelodie.git`  
![picture 13](../../images/bb085135e32b1ff44736423bc12d91fd4dc2d69ea13b68e5e25e61861e8651e4.png)  
1. lancer l’éditeur  
![picture 14](../../images/2b52b084e35690234d76819ce60d4c633d2d1d67cdcabb0f19fc065978b25641.png)  
1. ouvrir le fichier README.MD du noeud de contrôle ubuntu-c 
/home/yvieville/diveintoansible-lab/ansible_home/ubuntu-c/ansible/ansibleMelodie/README.md
![picture 15](../../images/03016ede7c979a3f72078c03f6fa753462fd6dc119c08170ad8b8e56fc5471b5.png)  

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
![picture 16](../../images/8122fe353278f0f95a2eb779a3fe0e4b65fea1264bfb70724c613691304bbe47.png)  
1. vérifier la présence ansible  
`ansible --version`
1. connecter vous à la machine centos1 via ssh  
`ssh centos1` 

1. pour sortir de l'environnement 
    1. fermer les machines linux
    ![picture 17](../../images/c2d037baae22adb3ca90c6d090816ca25b0341e0e1273deaf71da32034720794.png)  
    1. fermer les fenêtres du lab
    ![picture 18](../../images/479a557bcbfc9d10bdeca24d1fd70487fed1058966dcd9ad3ab793914d76e837.png)  
    1. arrêter les machines (docker ) via la touche CTRL-C dans le cloud shell
    ![picture 20](../../images/9999b4c0812c58c8f4a94a177b15b851cd6e546fdbd1703d238fb63e95f1f56e.png)  

    1. puis fermer l’éditeur et le terminal
    ![picture 19](../../images/4a7d66029f09ef07932cca53c99c158b58f0475da9f6d54e27ff182c1ed90983.png)  
    ![picture 21](../../images/de8913f53dca64e2accd82c9bc0794d4a95ddd2e6fd468fd95a9fa8ba39c5894.png)  
    1. reprendre le travail en rouvrant un session  
    [cloud shell](https://shell.cloud.google.com/?show=terminal)  
    puis relancer la commande suivant dans le terminal  
    `cd ${HOME}/diveintoansible-lab; bin/docker-compose up --quiet-pull`
    1. voir son quotas d’utilisation 
    ![picture 23](../../images/96710428b4c3ad8a028273ee15cd2fa84be0a880ef4eb029843ab60694a89b1a.png)  

    ![picture 22](../../images/ecccb26685f64d9ae6ca57478ee2a6e1165292d5dbbcec996f9e958afe698e72.png)  

## Conclusion et feed-back  

## Correction  



# 💡💡💡💡Idées 
- 