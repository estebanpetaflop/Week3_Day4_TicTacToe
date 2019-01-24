# Tic Tac Toe
___

Récompensé à l'E3 et salué par la critique, notre morpion a impressionné les plus grands studios tels qu'Ubisoft et Square Enix.

On va pas passer 3 heures à vous expliquer le fonctionnement d'un morpion mais grosso modo :
1. C'est du 1v1 en mode local.
2. Chacun a un petit symbole : ⭕️ ou ❌
3. Tour à tour (oui, notre morpion c'est un RPG), chacun décide où placer son symbole dans les cases vides du tableau.
	_Si vous choisissez de mettre votre symbole dans une case déjà remplie c'est qu'il faut réfléchir plus fort. Mais si vous faites tout de même ce choix, notre programme vous fera comprendre que c'était pas une bonne idée._
4. Le premier qui arrive à composer une ligne/colonne/diagonale avec son signe remporte la partie, *YAY!*
5. Bah, vous avez toujours pas compris le fonctionnement d'un morpion ?

___

## Fonctionnement

Nous possédons _7_ fichiers. Voici leur utilité :
1. _app.rb_ : Celui-ci permet de lancer le morpion. C'est lui que vous allez rentrer dans votre super terminal pimpé grâce à _OHMYZSH_.
2. _application.rb_ : Ce fichier équivaut au Router en MVC de mercredi. Il envoie l'info au fichier _game.rb_ qui contrôle le déroulement de la partie.
3. _board.rb_ : Ca c'est le squelette de notre morpion. C'est le tableau dans lequel vous mettez vos petits symboles.
4. _game.rb_ : Assez explicite, non?
5. _player.rb_ : Mise en place des deux joueurs afin de commencer une partie. Rappelez-vous on a dit plus tôt que c'était un 1v1.
6. _show.rb_ : Permet de remplir notre squelette créé dans _board.rb_ au fur et à mesure de la partie.
7. _verification.rb_ : Sans ça on ne peut savoir si quelqu'un a remporté la partie.
8. _conversion.rb_ : Il convertit les coordonnées entre elles.
___

Tendresse & Chocolat, on vous aime putain.

_Made in Bordeaux by Morgane Moncomble (@Morgane), Jordan Laforet (@JohnnyPepere), Cris Ferreira (@CRIS), Etienne Chevalier (@Etienne) & Marie-Aurore Ducros (@Misa)._
