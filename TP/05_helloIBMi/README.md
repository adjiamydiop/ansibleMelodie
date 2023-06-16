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

### créer le projet ansibleMelodie

1. cloner le depot ansibleMelodie de github
`git clone https://github.com/novy400/ansibleMelodie.git`  

si cela ne marche pas, passer par /tmp
et `mv ./ansibleMelodie /home/YVON/ansibleMelodie`

![picture 18](../../images/945fcfad1d90eae76c9d861e344f8a0edc4f10c250d947c52ad578be4e162a91.png)  

1. se placer dans  le dossier ansibleMelodie  

```
cd ansibleMelodie
git pull 
```
1. créer un dossier myWork 
`mkdir mywork ; cd myWork`
![picture 19](../../images/252195673e8df716c9832639f23ebc0fcc8962bc830925de56f09b9fedb8329f.png)  

1. créer un dossier TP05 pour notre projet.  
`mkdir TP05 ; cd TP05`
1. création d'un raccourci dans code for IBMi.
Dans la partie `IFS BROWSER` de COde for IBMI.
- deployer le dossier home (/home/VOTREPROFIL)
- cliquer droit sur le dossier ansibleMelodie 
- ajouter un raccourci
![picture 22](../../images/2da97e07aa1da9a5baf4037b162a55ddcb7e7fed7c54b8f52f8074b50ef756e2.png)  
-confirmer par la touche entree
![picture 23](../../images/70af6901f1c5a82289fbd646bfbd87c2d6f9641c788ae38e5183d37561189033.png)  
![picture 24](../../images/32e1c5c2d7c60cd84c3e48aea5d17cc3d82fc05cbbe8ec81207ddfc833301930.png)  


### Configurer ansible
1. tester la configuration existante via les commandes CLI 
`ansible --version`  
ou  
`ansible-config --version`
![picture 20](../../images/a802a131ff1035444f4ccf03299e6e7a39c362ed041c2f60ce9299726c8154e0.png)  
`ansible-config view`
![picture 21](../../images/a4ebfd6817e89b86d89c0b828e194ce5ce7a044eb5d609739c05d6ab664e080a.png)  

1. Création de ansible.cfg dans notre projet 
- copier le fichier ansible.cfg (/TP/05_helloIBMi/ressources/ansible.cfg).  
![picture 25](../../images/4dfd96997692db65748bdd13c65e3637514a75b42bcec1206300b82631cfa6cf.png)  
- indiquer le nouveau chemin  
`/home/YVON/ansibleMelodie/myWork/TP05/ansible.cfg`
![picture 26](../../images/011e7f5b76a3cb4bb6774630a0d245ae8cf890516fb8f47b50b752d6f66e028d.png)  
puis entree

- tester la configuration  
    - `ansible-config --version`
![picture 27](../../images/e667cdff4f44f8a0ef922e04a3cf7f42674ff46a7df6c2d75521e5075a38b0c8.png)  

1. creation de l'inventaire
Nous réaliserons tous nos tests sur une seule machine en local.
Donc nous n'allons configurer que le control node qui sera auto consommé en local (sasn ssh) 
- copier le fichier 00_inventory.yml (TP\05_helloIBMi\ressources\00_inventory.yml). 
- tester l'inventaire 
`ansible-inventory -i 00_inventory.yml --graph`
![picture 28](../../images/86e6c7e46be03704cb18294b13efcc5ed409deb2bd1d4b4434e3e1106fb853c2.png)  
`ansible -i 00_inventory.yml all -m ping` 
![picture 29](../../images/ce3640df41ca85a1ea49c0022001f2a2525294ef5dabddb77874485cf8da8698.png)  

Comme vous pouvez le remarquer nous avons un petit soucis de configuration de l'interpreteur python, c'est souvent le cas sur l'IBMi mais nous allons corriger en précisant l'usage de ce python pour ce host via une variable d'inventaire.
![picture 30](../../images/524285e38d97838d56a29a67c1cb66239a10f73d8c2a45937872f058e712cd64.png)  
1. création d'une variable d'inventaire.
    - ajout du dossier `/group_vars` puis  `/all` dans celui-ci
![picture 31](../../images/6a74f6e33de6fc22e286e6c117235e47942b88f5e6e6c2ed6ab5159e27923b76.png)  
![picture 32](../../images/ed3590e8eae4ecd6a5c3ed729c994a7082d11afa8de496ccdf72f435b860ec07.png)  
![picture 33](../../images/4839f78e47b94c87d6dc8d7228677a81e8ebac354f8b619ce373ec135d8f6b2f.png)  
    - ajout d'un fichier variables.yml dans ./TP05/group_vars/all  
![picture 34](../../images/caf31207abecc2d3cbf420b4b2896240b1521da5dcce5b2efa0f55221ed0155c.png)  
    - ajout de la variable
    `ansible_python_interpreter: /QOpenSys/pkgs/bin/python3.6`
    - testons un ping  
    `ansible -i 00_inventory.yml all -m ping`  
![picture 35](../../images/fc5aa23634502e76074606a89db8c4f984e85ff43a822158a9d0e147f5c2d33d.png)  

### un premier playbook ?
nous allons lancer un playbook du TP03.
pour afficher le contenu d'une variable d'inventaire et créer un dossier tmp.
1. ajout de la variable maVariable dans l'inventaire.
    - ouvrez le fichier variables.yml de `/home/YVON/ansibleMelodie/myWork/TP05/group_vars/all/variables.yml`
    - ajouter la ligne  
    `maVariable: all`
1. copie du playbook du TP03 dans notre projet  
`/home/YVON/ansibleMelodie/TP/03_PremierPlaybook/TP/correction/03/10_premierPlaybook.yml`  
![picture 36](../../images/c63da808a6dd6fc5f3c06fd507232b047e85a7929617d83f6efd1346e35c744a.png)  
dans 
`/home/YVON/ansibleMelodie/myWork/TP05/10_premierPlaybook.yml`
1. testons 
`ansible-playbook 10_premierPlaybook.yml -i 00_inventory.yml`  
![picture 37](../../images/71a67f5d3d40e3939da123c2275c4ed023af25c11ce99a704f278e1b82951109.png)  

Nous devons modifié notre playbook , nous n'avons plus de group `managed`
1. modification du playbook 
```yaml
---
- name: tests de notre configuration.
  hosts: all
  tasks:
   - name: test de la connexion
     ping:
   - name: affichage d'un message avec ma variable.
     debug:
      msg: Le contenu de ma variable est {{ maVariable }}. 

- name: creation d'un dossier ~/tmp.
  hosts: managed
  tasks:
    - name: ajout du dossier.
      file:
        state: directory
        path: ~/tmp            
...
```
devient  
```yaml
---
---
- name: tests de notre configuration.
  hosts: all
  tasks:
   - name: test de la connexion
     ping:
   - name: affichage d'un message avec ma variable.
     debug:
      msg: Le contenu de ma variable est {{ maVariable }}. 
   - name: ajout du dossier.
     file:
      state: directory
      path: ~/tmp            
...
```
1. relançons
![picture 38](../../images/cdf8d770aa685aa09b8cb5be3f593b84bb2bfe76aeec4b3a0a0f08f006135d5b.png)  
vérifions  
![picture 39](../../images/6b75d7a76edfc11b2ebaa56380e4e19daa92576175381bb4725c691718488e7c.png)  

[correction](../05_helloIBMi/TP/correction/01/)

### la miniCMDB ? 
1. copie du playbook [TP\04_miniCMDB\TP\correction\03\20_miniCMDB.yml](../04_miniCMDB/TP/correction/03/20_miniCMDB.yml)
1. copie du dossier avec la template [TP\04_miniCMDB\TP\correction\03\templates](../04_miniCMDB/TP/correction/03/templates/)
1. modification playbook
Nous n'avons qu'une seule machine donc nous pouvons supprimer le jeu pour la partie `managed`
```
- name: download des rapports des machines hôtes
  hosts: managed
  gather_facts: no  
  tasks:  
    - name: recup é/tmp/*.html ==> localhost ~/tmp
      fetch:
        src: "~/tmp/{{ inventory_hostname }}.md"
        dest: ~/tmp
        flat: true
        validate_checksum: false                       
...
```
1. lançons
![picture 40](../../images/b1b876b513ea340a94607afbfa165d0ff6b65924827c61e7ca674d15ec0891c2.png)  
ça ne marche pas .
![picture 41](../../images/57c4d3ac85a62b930e95eafd00cb3cbda473627164cc1d3366e34c8f0180fcc7.png)  
1. modifions notre template
- supprimons la variable
{{ ansible_default_ipv4.alias }} 
{{ ansible_distribution_major_version }}
notre template devient 
```md
# Rapport du système {{ inventory_hostname }}

| Interfaces IP  | Architecture          | OS | Nom du node |
| :--------------- |:---------------:| :-----:| :----------:|
| non definie   |   {{ ansible_architecture }}       |  {{ ansible_distribution }}  {{ ansible_distribution_release }} | {{ ansible_nodename }} | 
```
1. relançons
![picture 42](../../images/826f79a9cc0b7dbda4d13e16d2507d6bd416606af0d9382280ab83571827f891.png)  
![picture 43](../../images/bae0e6ecd5b3fcbe8bdff0431c9c32159797a00a668f47dd828cd791e4cd65a5.png)  

[correction](../05_helloIBMi/TP/correction/02/)
## Conclusion et feed-back  

## Correction  



# 💡💡💡💡Idées 
- 