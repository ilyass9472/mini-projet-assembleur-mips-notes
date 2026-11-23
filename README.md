# Mini-projet Assembleur MIPS : Gestion et analyse des notes d'un étudiant

## Présentation

Ce mini-projet, destiné à la filière **MIP_I3**, consiste à développer une application en langage assembleur MIPS pour saisir, gérer et analyser les notes d'un étudiant.

L'objectif pédagogique est de mettre en pratique les notions fondamentales de l'architecture MIPS : manipulation des registres, calculs arithmétiques, nombres flottants, comparaisons, structures conditionnelles, boucles et opérations d'entrée/sortie.

## Fonctionnalités attendues

Le programme devra proposer un menu interactif permettant de sélectionner les opérations suivantes :

1. **Saisie des notes** de trois matières, par exemple : Architecture des ordinateurs, Programmation et Mathématiques.
2. **Calcul et affichage de la moyenne arithmétique** des trois notes.
3. **Recherche et affichage de la meilleure note**.
4. **Recherche et affichage de la note minimale**.
5. **Affichage du résultat de l'étudiant** :
   - `Admis` si la moyenne est supérieure ou égale à 10/20 ;
   - `Ajourné` sinon.
6. **Affichage des notes saisies** ainsi que de la moyenne calculée.
7. **Quitter** le programme.

## Contraintes techniques

- Le programme doit être développé exclusivement en **assembleur MIPS**.
- Les notes doivent être représentées par des nombres flottants simple précision sur 32 bits.
- Les opérations arithmétiques flottantes doivent utiliser les instructions MIPS adaptées, notamment `add.s`, `sub.s`, `mul.s` et `div.s`.
- Les comparaisons entre les notes doivent utiliser les instructions flottantes appropriées, notamment `c.lt.s`, `c.le.s`, etc.
- Le programme doit comporter un menu interactif et permettre le retour au menu principal.
- Les notes saisies doivent être validées afin de garantir qu'elles sont comprises entre 0 et 20.
- Le code source final devra être structuré, commenté et lisible.

## Outils recommandés

- **MARS** ou **PCSpim/SPIM** comme simulateur MIPS ;
- Un éditeur de texte ou un environnement de développement adapté ;
- La documentation des instructions de l'assembleur MIPS.

## Exemple de résultat attendu

Pour les notes suivantes :

- Architecture des ordinateurs : 15
- Programmation : 9
- Mathématiques : 16

Le programme devra afficher :

- Moyenne : 10
- Meilleure note : 16
- Note minimale : 9
- Résultat : `Admis`

## Étapes de réalisation suggérées

1. Définir les registres nécessaires pour stocker les trois notes et les résultats intermédiaires.
2. Implémenter la saisie et la validation des notes.
3. Afficher le menu et lire le choix de l'utilisateur.
4. Implémenter le calcul de la moyenne avec les instructions flottantes.
5. Déterminer les notes minimale et maximale avec les comparaisons flottantes.
6. Déterminer le résultat de l'étudiant selon la moyenne obtenue.
7. Afficher les résultats et permettre le retour au menu ou la sortie du programme.

## Livrables demandés

- Le code source complet du programme au format `.asm` ;
- Une documentation succincte présentant le fonctionnement du programme et les principales instructions MIPS utilisées ;
- Quelques captures d'écran montrant les fonctionnalités et les résultats obtenus dans le simulateur.

Le programme devra être testé et fonctionner correctement sur le simulateur MIPS choisi.
