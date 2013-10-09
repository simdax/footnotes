footnotes
=========

## Jeu d'aventure textuel facilement customisable


Ce logiciel permet de faire des aventures textuelles parallèles.

Que signifie des aventures textuelles parallèles?

Une aventure textuelle est un texte. Qui se lit. Classiquement, une
*aventure* textuelle propose des choix, illustrant les choix d'un
personnage que le lecteur incarne. Ce n'est pas le cas de
footnotes. Dans footnotes, l'aventure consiste simplement dans une
déambulation à travers le texte, vers l'avant ou vers l'arrière. À
certains moments, des phrases-clef permettent le passage vers d'autres
textes. Et, plongé dans ce nouveau texte, le lecteur pourra à nouveau
déambuler. Chaque texte représente en quelque sorte un îlot textuel.

###Concrètement: 

Tout d'abord le logiciel charge un premier texte. On parcoure
celui-ci en avant (avec ESPACE) ou en arrière (avec 'c').  Dès qu'on
rencontre une phrase qui s'imprime en rouge, cela signifie qu'un saut
de texte est effectué. On explore ce nouveau texte à nouveau avec
'ESPACE' pour avancer ou 'c' pour reculer, jusqu'à rencontrer un
nouveau pont, etc.

## Éditer facilement soi-même ses propres histoires

*Footnotes* est avant tout un outil.
Il est possible de créer sa propre histoire tout simplement en donnant en argument un répertoire dans lequel se trouveront
jusqu'à 9 textes possible.

Il suffit de les nommer "0", "1", "2" etc.

Dans le corps de texte, un renvoi vers un autre texte se fait en __début de phrase__ 
par un carret ('^') et un avancement à travers les paragraphes permettent 

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