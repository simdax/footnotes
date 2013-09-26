footnotes
=========

## Jeu d'aventure textuel facilement customisable


Le logiciel permet de faire des aventures textuelles parallèles, dans la limite de 9 textes. Il faut les nommer "0", "1", "2" etc.
Chaque texte est parcourable dans un sens ou dans l'autre, par 'c' ou 's'.
Un renvoi vers un autre texte se fait en __début de phrase__ par un carret ('^') et le numéro du texte 
ET en __fin de phrase__ par un symbole @ ou # ou ~ pour signifier la phrase d'entrée dans le nouveau texte.

## par exemple :

texte 0 :

Coucou mec.^1 Ça va @?

texte 1 :

@ Oui.^2 Et toi Bob #?

texte 2 :

# yep


L'intérêt est de jouer sur le positionnement des phrases et l'ordre d'exploration de ces dernières.


# Execution

C'est un script ruby qui demande gem pour "colorize" et fonctionnera certainement mieux sous UNIX pour les entrées utilisateur.
