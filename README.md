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
par un carret ('^')
ET en __fin de phrase__ par un symbole @ ou # ou ~ pour signifier la phrase d'entrée dans le nouveau texte.

#### par exemple :

texte 0 :

@ Coucou mec.^ Ça va @?

texte 1 :

@ Oui.^ Et toi Bob #?

texte 2 :

je me retrouve maintenant # là


L'intérêt est de jouer sur le positionnement des phrases et l'ordre
d'exploration de ces dernières.  Il est possible de jouer avec tous
les symboles possibles, le dernier caractère se trouvant de facto un
symbole, mais il est conseillé d'utiliser # @ ou ~ qui ne sont jamais
imprimés par le programme.

De base, la première phrase du texte "0" doit commencer par un '@'. On
peut spécifier en ligne de commande le numéro du texte par lequel on
souhaite commencer.

#### paragraphe

Chaque histoire est contenue dans un paragraphe. Concrètement, arrivée
à la fin du paragraphe est bloquant, comme si c'était la fin du livre.

### niveau de renvoi et progression dans la lecture

Il est possible de spécifier plusieurs @, # ou ~. Cela signifie la
progression du lecteur. À chaque ouverture de fichier, les renvois ne
se font plus au niveau des simples @ # ~ mais de leur double @@ ~~ ##,
puis ensuite de leur triple @@@ ###.

Ce chiffre descend si dans le paragraphe ne compte pas double, triple
etc. symbole. La lecture s'en trouve freinée.

### tours

Il y a dans footnotes une notion du temps. Tous les 15 tours, les
renvois ne fonctionnent plus. De cette manière il est possible de
passer des phrases qui renvoyaient ailleurs.

## Musique

Il est possible d'ajouter du son au fichier texte que vous avez ouvert en mettant en première ligne du fichier le
nom du fichier son (se trouvant dans le répertoire de l'histoire) entre '|'

exemple:
```
|musique.mp3|
TOut d'un coup, il vit la face livide de Johny se transformer en celle d'une... GOULE !
```

# Installation et execution

Le logiciel est écrit en ruby, et il requiert rubygame et colorize

Pour tout utilisateur de Ubuntu, il y a un petit script de dependances dans le répo. Il suffit de taper 

     	  ./dependances.sh