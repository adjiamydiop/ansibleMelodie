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
Ce lab a été développé par la sociétée DIVEINTO que nous remerçions.
Cette infrastructre est composée de plusieurs systémes linux (3 centos et 3 ubunut) provisionnés par docker.
Ainsi nous pourrons nous exercer sur la simulation d'une infrastructure complexe.   
Ces systémes sont en fait des containers dockers mais pour notre usage, il n'y aucun probléme.


Dans la seconde partie consacrée plus spécifiquement à l'IBMi, nous allons nous exercer à utiliser Ansible et des modules spécifiques pour exploiter notre systéme IBMi.

## Présentations

Les exercices sont explicites et guident les participants à travers tout le laboratoire. Tous les concepts sont expliqués lors de leur introduction.

Une présentation facultative est disponible pour soutenir les ateliers et expliquer l'automatisation, les bases d'Ansible et les sujets des exercices plus en détail:
[Ansible RHEL Automation](../../decks/ansible_rhel.pdf)

Jetez également un œil à notre plate-forme des meilleures pratiques Ansible:
[Ansible Best Practices](../../decks/ansible_best_practices.pdf)

## Planification du temps


Le temps requis pour faire les ateliers dépend fortement de plusieurs facteurs: le nombre de participants, leur familiarité avec Linux en général et le nombre de discussions qui se font entre les deux.

Cela dit, les exercices eux-mêmes devraient prendre environ 4 à 5 heures. La première section est légèrement plus longue que la seconde. La présentation qui l'accompagne ajoute une heure de plus.

Si votre expérience est différente dans la planification de ces ateliers, veuillez nous en informer et créer un ticket.


## Partie 1 - Ansible avec Linux

 - [TP01 - Mise en place du Lab](01_MiseEnPlace_LAB/README.md)
 - [Exercise 1.2 - Running Ad-hoc Commands](1.2-adhoc/README.fr.md)
 - [Exercise 1.3 - Writing Your First Playbook](1.3-playbook/README.fr.md)
 - [Exercise 1.4 - Using Variables](1.4-variables/README.fr.md)
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

## Exercices supplémentaires

Il existe également une série d'exercices qui vont au-delà de notre contenu normal de l'atelier. Veuillez consulter nos exercices supplémentaires si vous souhaitez en savoir plus sur le contenu.

 - [Exercices supplémentaires](supplemental)

## Information additionnelle

 - [Prise en main d'Ansible](http://docs.ansible.com/ansible/latest/intro_getting_started.html)

---
![Red Hat Ansible Automation](../../images/rh-ansible-automation-platform.png)