class Application
    def initialize
      @show = Show.new
    end
  
    def run
      Show.welcome_message
      puts "Pour commencer, joueur 1 choisis ton nom ! :"
      name = gets.chomp
      player1 = Player.new(name, 'X')
      Show.show_player_details(player1)
  
      puts "Joueur 2, choisis ton nom ! :"
      name_2 = gets.chomp
      player2 = Player.new(name_2, 'O')
      Show.show_player_details(player2)
  
      board = Board.new
  
      game = Game.new(player1, player2, board)
      game.play
    end
  end