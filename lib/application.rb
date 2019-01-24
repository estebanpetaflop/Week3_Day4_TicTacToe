# Ce fichier équivaut au Router en MVC de mercredi. Il envoie l'info à Game qui contrôle le déroulement de la partie.

require 'game.rb'

class Application
  attr_accessor :name1, :name2


	# def initialize # Initialisation de la partie. On fait appel à la class Game
	# 	@game = Game.new
  # end

  def perform

  puts "Hey, do you wanna play some Tic Tac Toe?  (Φ ω Φ)  Press enter to play!" # Lancement de la partie
  gets.chomp
  system ("clear")
  puts "Alright, bring it on!  ᕕ( ᐛ )ᕗ"
  puts "Player 1, what’s your name? (Φ ᆺ Φ)"
  print "> "
  @name1 = gets.chomp # Le joueur 1 entre son nom

  puts "Player 2, what’s your name? (Φ ᆺ Φ)"
  print "> "
  @name2 = gets.chomp# Le joueur 2 entre son nom
  # initialisation du jeu pour savoir qui commence :
  @game=Game.new(@name1,@name2)

  current_player=@game.start_game(@name1,@name2)
  # Chaque tour alterne entre les joueurs. Chacun en a un après l'autre jusqu'à ce que l'un gagne ou quand le tableau est rempli
  puts current_player.name + ", time to pick!"
  puts current_player.name + ", which case do you choose ?"
  @game.turn(current_player)

  end
end
