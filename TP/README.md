# Atelier Ansible - Ansible pour Linux sur Google Shell Cloud
> Executer des tâches sur des machines hôtes (hosts) 

Ansible est une plateforme d'automatisation open source qui permet de gérer la configuration, le déploiement et l'orchestration des systèmes informatiques. 
Il utilise :
- un langage simple et déclaratif pour décrire les états souhaités des systèmes
- des modules pour exécuter des actions spécifiques sur les machines cibles.

Ansible offre une approche centralisée (**Control Node**) basée sur la connectivité SSH ( **Managed Nodes**) pour automatiser les tâches de gestion des systèmes, ce qui facilite la gestion et le déploiement à grande échelle.

Simple mais puissant, Vous pouvez vous familiariser avec les concepts de base relativement rapidement.

Lors de cette premiere partie, nous allons utiliser Ansible sur une infrastructure déployée sur Google Shell.
Vous apprendrez à utiliser Ansible Engine pour l'automatisation en partant des concepts de bases pour aller vers des concepts plus avancés.
Ce lab a été développé par la société DIVEINTO que nous remercions.
Cette infrastructure est composée de plusieurs systèmes "linux" (3 centos et 3 ubuntu) provisionnés par docker.
Ainsi nous pourrons nous exercer sur la simulation d'une infrastructure complexe.   
Ces systèmes sont en fait des containers dockers mais pour notre usage, il n'y aucun problème.


Dans la seconde partie consacrée plus spécifiquement à l'IBMi, nous allons nous exercer à utiliser Ansible et des modules spécifiques pour exploiter notre système IBMi.


## Partie 1 - Ansible avec Linux

 - [TP01 - Mise en place du Lab](01_MiseEnPlace_LAB/README.md)
 - [TP02 - Configurer Ansible](02_ConfigurerAnsible/README.md)
 - [TP03 - Écrire votre premier playbook](03_PremierPlaybook/README.md)
 - [TP04 - Utiliser des variables]()
 - [Exercise 1.5 - Conditionals, Handlers and Loops](1.5-handlers/README.fr.md)
 - [Exercise 1.6 - Templates](1.6-templates/README.fr.md)
 - [Exercise 1.7 - Roles](1.7-role/README.fr.md)

## Partie 2 - Ansible sur l'IBMi

 - [Exercise 2.1 - Introduction to Tower](2.1-intro/README.fr.md)
 - [Exercise 2.2 - Inventories, credentials and ad hoc commands](2.2-cred/README.fr.md)
 - [Exercise 2.3 - Projects & job templates](2.3-projects/README.fr.md)
 - [Exercise 2.4 - Surveys](2.4-surveys/README.fr.md)
 - [Exercise 2.5 - Role based access control](2.5-rbac/README.fr.md)
 - [Exercise 2.6 - Workflows](2.6-workflows/README.fr.md)
 - [Exercise 2.7 - Wrap up](2.7-wrap/README.fr.md)

