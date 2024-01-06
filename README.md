# Bomberman

Auteurs :   
Adriaenssens Elisa elisa.adriaenssens.etu@univ-lille.fr   
Carpentier Madeline madeline.carpentier.etu@univ-lille.fr   
Sellah Rabah rabah.sellah.etu@univ-lille.fr   

## Projet - Utilisation
### Description
  L'objectif est de faire un jeu bomberman fonctionnel. Donc on doit pouvoir se deplacer et poser des bombes, avec un temps qui défile. 
  Nous avons comme objectifs de faire un code ouvert à l'évolution avec des design pattern. Il nous faut également des tests pour prouver que notre application est fonctionnelle. Un UML, un journal de bord.

## Lancement du projet
  Voici notre petit tutoriel pour lancer le projet. Vous pouvez évidement y contribuer.
  
### Installation des dépendances
  Lancez pharo puis ouvrez un ```playground```. Dans ce playground executez les commandes suivantes, **ça peut prendre plusieurs minutes** :
  ```smalltalk
Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc:05e5b0e385811719537f8cd89966b150a07be985/src';
    onConflictUseIncoming;
    load;
    lock.
```
```smalltalk
Metacello new
    repository: 'github://Ducasse/Myg:v1.0.0';
    baseline: 'Myg';
    onConflictUseIncoming;
    load.
```
  
### Aller récupérer le projet sur git
  Ouvrez un ```git repositories browser```, puis faites ```add```, ```git clone```.
  Le nom de l'auteur est ```Elisa2502```, il faut mettre un nom de projet et HTTP.
  Quand vous revenez sur la page précédente, cliquez sur le projet qui vient d'apparaître, ça va vous ouvrir une nouvelle page. Sur cette page le status est à ```Not loaded``` faite un clic droit load.
  Pour vérifier, vous pouvez ouvrir un ``` System Browser ``` et taper Bomberman dans les filtres, si tout va bien le projet devrait apparaitre.
  
### Lancement du projet
  Ouvrez un ```playground``` et lancez la commande suivante : 
```smalltalk
  |test|
  test := MainMain new.
  test main.
```
  Ca vous ouvrira une fenetre pour jouer.

### Comment jouer ?
    Pour vous déplacer, utilisez les flèches ← ↑ ↓ →
    Pour poser une bombe, utilisez 'A'


## Projet - Informations Complémentaires

### UML
  Voici l'évolution de notre UML au fur et à mesure de l'avancé du projet.

### Design

#### Implémentation

#### Design Pattern
  Au niveau des patrons de conception, nous avons : 
  - Un visiteur 
  
  Il se fait au niveau du joueur et des types de cases. Lorsque l'on veut déplacer le joueur sur une case, il va demander pour la visiter et c'est le type qui va décider si le mouvement est possible ou non. 
  
  - Un state
    
  Au niveau d'une case, elle possède un état qui correspond à son type (Simple, Breakable, Wall, Bomb).
  
  - Subject / Observer
    
  Le sujet est l'état Bomb et l'observateur est le Board. En effet, lorsque le joueur pose une bombe, le plateau va s'abonner en tant qu'observateur pour être tenu au courant quand elle explose. Lorsque le moment est venu, elle va notifier son observateur et celui-ci va répandre l'explosion sur les cases autour.

#### Notre façon de faire 
Nous avons fait l'erreur de nous focaliser en début de projet sur la conception de notre uml afin d'optimiser au mieux notre implémentation.
Mais nous nous sommes vite rendu compte que l'on pouvait toujours l'optimiser. 
Au lieu de commencer à coder pour expérimenter nos conceptions, nous continuions de réfléchir.
Nous avons donc pris un retard par rapport aux autres groupes. 
De plus, nous sommes tous les trois en alternance alors nous n'avions pas beaucoup de temps en dehors des heures de C3P pour travailler ensemble.
Une fois que l'on s'est lancé au développement de notre jeu, nous nous sommes répartis les tâches:
- Elisa s'occupait des types de cases,
- Madeline gérait la partie visuel,
- Rabah implémentait le plateau.


## Problèmes rencontrés
  Les principaux problèmes rencontrés étaient : 
  - Un manque d'organisation suite à une perte de temps en début de projet,
  - Une conception difficile à définir,
  - Comprendre le vrai but du projet : avoir un jeu fonctionnel au plus vite ou mettre en place au mieux les design pattern ?


## Conclusion compétences
### Ce qu'il ne faut pas faire
### Ce qu'il faut faire
