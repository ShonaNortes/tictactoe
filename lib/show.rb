class Show
    def self.welcome_message
      puts " ------------------------------------------------ "
      puts "|             TIC TAC TOE ! XOXO                  |"
      puts " ------------------------------------------------- "
      puts "Bienvenue dans le jeu TIC TAC TOE !"
    end
  
    def self.show_player_details(player)
      puts "Le joueur s'appelle #{player.name} et a le symbole #{player.symbol}"
    end
  
    def self.display_board(board)
      board.display_board
    end
  
    def self.show_current_player(player)
      puts "C'est le tour de #{player.name}"
    end
  
    def self.cell_already_taken_message
      puts "Cellule déjà prise, veuillez réessayer."
    end
  
    def self.congratulate_winner(player)
      puts "Félicitations, #{player.name} a gagné !"
    end
  end