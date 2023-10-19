class Game
    attr_accessor :player1, :player2, :board

    def initialize(player1, player2, board)
        @player1 = player1
        @player2 = player2
        @board = board
        @current_player = @player1

    end

    def switch_player
        @current_player = @current_player == @player1 ? @player2 : @player1
    end

    
    def play
        filled_cell = 0
        while true
          @board.display_board
          puts "\n"
          puts "C'est le tour de #{@current_player.name}"
          puts "Choisissez une ligne (0-2) : "
          row = gets.chomp.to_i
          puts "Choisissez une colonne (0-2) : "
          col = gets.chomp.to_i
          if @board.play_turn(row, col, @current_player.symbol)
            if @board.victory?(@current_player.symbol)
              puts "Félicitations, #{@current_player.name} a gagné !"
              break
            end
            if filled_cell == 8
                puts("Match nul ! Aucun vainqueur")
                break
            end
            filled_cell += 1
            switch_player
          else
            puts "Cellule déjà prise ou incorrecte, veuillez réessayer."
          end
        end
        @board.display_board
      end

    def game_end

    end

end