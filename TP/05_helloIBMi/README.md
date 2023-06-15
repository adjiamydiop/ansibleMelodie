# Tutorial 5 Utiliser Ansible sur IBMi.    
## Table des matières
- [Objectifs](#objectifs)  
- [Ressources](#ressources)
- [Pré-Requis](#pré-requis)  
## Objectifs  
Dans ce TP ,nous allons utiliser Ansible sur notre IBMi.
Pour respecter des contraintes d'infrastructure,notre IBMi sera le noeud de contrôle et nous exécuterons des tâches sur lui même en utilisant une connection locale (comme ubuntu-c).

Pour ce faire nous avons de réaliser quelques manipulations et installations d'outils.


Ainsi nous allons : 
- Installer visual studio code sur votre poste client.
- Installer les différentes extensions nécessaires (code for IBMi) via un profile gist ?
- Ajouter un .profile et 
- Ajouter des tachés en nous aidant des modules pour :.bashrc pour configurer votre shell sur l'IBMi.
- Cloner le dépot ansibleMelodie sur votre home.
- Installer la collection ibmi sur votre home.
- Configurer Ansible (ansible.cfg) et tester via CLI.
- Creation d'un inventaire en localhost (group_vars python3) et Test via le CLI
- Appeler un playbook créé au chapitre précédant pour voir ...



## Ressources 
- Environnement 
- Temps : 60 mn.
## Pré-Requis
 


## Énoncé  
### Etape 1 Installer Visual Studio Code sur le poste client.
1. [Download Visual Studio Code](https://code.visualstudio.com/download)
1. lancer l'installation.
🧐lors de l'installation ,choisissez l'option pour avoir vsc en clic droit et le raccourci sur le bureau.
1. Ouvrer VSC et créer un dossier (ou vous voulez pour travailler)
![picture 1](../../images/607b2c5dcb9234c043708110830c9a0c5d69affc7cb4f396a1e13da7d6fe5c7c.png)  
![picture 2](../../images/96eb53cd1d2fa9c4179eccadbe14b0baf74f8c0f185f6b94b36b9da6b998e551.png)  
![picture 3](../../images/2eb20698f82dfa63b6587a71e49de7b3c2f73046574d1e65ea287c745f02ebcc.png)  
![picture 4](../../images/860c10b58af03a2ae1a5cb188fd3980eb252b2cfee6337a0caf484c1dd00665e.png)  
![picture 5](../../images/ae05500d0bf03d6a1a2ab4d43c777eb5de25808b33938992bb070adc44bfdb75.png)  

### Etape 2 Installer code for IBMi.
1.installation des extensions via un profile.
[profile Ansible](https://vscode.dev/profile/github/89a0fbec81244d0efe56e9489c17f8fb)
![picture 6](../../images/bb5d7d9f62af7135ebb17de88709d6335ccaf7807bd46e815389c382631c5c1c.png)  
![picture 7](../../images/68d4b940e453c7c46d0b37f02308949431118c3de7e59d782f662be681e907d3.png)  
![picture 8](../../images/5d9b156a9c74f591ae9484b34ccb2ca601a9129cc885af4bb5e1e2ea046bf105.png)  
![picture 9](../../images/3486e6fe9374f158195407aae1c4c491fb9b3d9b238c17321bf99749ac4a5320.png)  
![picture 10](../../images/86d0c3c1a9aaa9a07b7419941b466b2517421d51b774876ef42df2acfa6259c6.png)  
1. connection à Armonie via code for IBMi
- lancer `code for IBMi`
![picture 11](../../images/ad40c77cc9c069676d10ce4864b5db9b7f12e2df86e498d69a3b53c2a96d74e7.png)  
![picture 12](../../images/f768810c32800908c0a6634c944857f12ebbc9c9398dda91020c3bd4e86c2f60.png)  
connection name : `ceQueVousVoulez`
host ou IP: `178.255.128.61`
userName : `VotreProfilIBMi`
password : `votrePasswordIBMi`
savePassword : ok 
![picture 13](../../images/085987a0a2be705156001bcd857d5a11cdcf72f508f2cac5c58e5cd519506963.png)  
accepter le message précisant le changement de la bibliothèque courante
![picture 14](../../images/d18ff28f6ee4c0e950a03856d488ec88de24b6f7059f7a9259a550d6cadd6405.png)  

### mise en place de .profile et bashrc
1. Ouvrir une session shell 
![picture 15](../../images/7fc9fbf05412a31d4dfae40b199a5baeac7e98cc6addd59e002e35a4e944980a.png)  
`cp /home/YVON/.profile .`
verifiez avec `ls -a`
idem pour le fichier .bashrc
`cp /home/YVON/.bashrc .`
1. fermer ce terminal pase et rouvrez un nouveau terminal
![picture 16](../../images/8a89cb6d546d8afefecfa073579de29a921440362152dfc6906abda11aee3fb2.png)  
1. tester en appelant l'aide de git
![picture 17](../../images/3c4530584fc1104d1d0c51b28207bbc8388b84edd1a124bbddd8d19aa8c49fc0.png)  
`git --help`

### creer le projet ansibleMelodie

1. cloner le depot ansibleMelodie de github
`git clone https://github.com/novy400/ansibleMelodie.git`  

si cela ne marche pas, passer par /tmp
et `mv ./ansibleMelodie /home/YVON/ansibleMelodie`



## Conclusion et feed-back  

## Correction  



# 💡💡💡💡Idées 
- 