# Bomberman

@author :   
Adriaenssens Elisa elisa.adriaenssens.etu@univ-lille.fr   
Carpentier Madeline madeline.carpentier.etu@univ-lille.fr   
Sellah Rabah rabah.sellah.etu@univ-lille.fr   

## Projet
### Description
### UML
### Probléme rencontré

## Lancement du projet
  Voici notre petit tutoriel pour lancer le projet. Vous pouvez evidement y contribuer.
  
### Installation des dépendances
  Lancer pharo puis ouvré un ```playground```. Dans ce playground executer les commandes suivantes, **ça peut prendre plusieurs minute** :
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
  Ouvrer un ```git repositories browser```, puis faites ```add```, ```git clone```.
  Le nom de l'auteur est ```Elisa2502```, il faut mettre un nom de projet et HTTP.
  Quand vous revenez sur la page précédente cliquer sur le projet qui vient d'apparaitre, ça va vous ouvrir une nouvelle page. Sur cette page le status est à ```Not loaded``` faite un clique droit load.
  Pour vérifier vous pouvez ouvrir un ``` System Browser ``` et taper Bomberman dans les filtres, si tout va bien le projet devrait apparaitre.
  
### Lancement du projet
  Ouvrer un ```playground``` et lancer la commande suivante : 
```smalltalk
  |test|
  test := MainMain new.
  test main.
```
  Ca vous ouvrira une fenetre pour jouer.

## Ce qu'on a appris
### Ce qu'il ne faut pas faire
### Ce qu'il faut faire
