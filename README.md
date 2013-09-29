footnotes
=========

## Jeu d'aventure textuel facilement customisable


Ce logiciel permet de faire des aventures textuelles parallèles.

Que signifie des aventures textuelles parallèles?

Tout d'abord le logiciel charge un premier texte. On parcoure celui-ci en avant (avec 'c') ou en arrière (avec 's').
Dès qu'on rencontre une phrase qui s'imprime en rouge, cela signifie qu'un saut de texte est effectué. On explore
ce nouveau texte à nouveau avec 'c' ou 's', jusqu'à rencontrer un nouveau pont, etc.

## Éditer facilement soi-même ses propres histoires

*Footnotes* est avant tout un outil.
Il est possible de créer sa propre histoire tout simplement en donnant en argument un répertoire dans lequel se trouveront
jusqu'à 9 textes possible.

Il suffit de les nommer "0", "1", "2" etc.

Dans le corps de texte, un renvoi vers un autre texte se fait en __début de phrase__ 
par un carret ('^') et le numéro du texte vers lequel le lecteur est renvoyé (^2 == vers le fichier nommé "2")
ET en __fin de phrase__ par un symbole @ ou # ou ~ pour signifier la phrase d'entrée dans le nouveau texte.

## par exemple :

texte 0 :

Coucou mec.^1 Ça va @?

texte 1 :

@ Oui.^2 Et toi Bob #?

texte 2 :

je me retrouve maintenant # là


L'intérêt est de jouer sur le positionnement des phrases et l'ordre d'exploration de ces dernières.
Il est possible de jouer avec tous les symboles possibles, le dernier caractère se trouvant de facto un symbole.

Mais il est conseillé d'utiliser # @ ou ~ qui ne sont jamais imprimés par le programme.


# Installation et execution


Cela requiert rubygame et colorize

```
sudo aptitude install rubygems libsdl1.2-dev libsdl-gfx1.2-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev
sudo gem install rubygame colorize
```

Testé uniquement sous Linux
