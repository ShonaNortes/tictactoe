class Board
    attr_accessor :cells
    
    def initialize
        @cells = Array.new(3) {Array.new(3, '-')}

        #if cells[0][2] == player.symbol && cells[1][2] == player.symbol && cells[2][2] == player.symbol

    end

    def display_board
        @cells.each do |row|
            line = ""
            row.each do |cell|
                line += cell + '|'
            end
            puts (line)
        end
    end

    def play_turn(row, col, symbol)
        if (row >= 0 && row <= 2) && (col >= 0 && col <= 2) && @cells[row][col] == '-'
            @cells[row][col] = symbol
            return true
        else
          return false
        end
    end

    def victory?(player_symbol)
        if (@cells[0][2] == player_symbol && @cells[1][2] == player_symbol && @cells[2][2] == player_symbol) || # Cas des lignes verticales (3 cas)
          (@cells[0][1] == player_symbol && @cells[1][1] == player_symbol && @cells[2][1] == player_symbol) || 
          (@cells[0][0] == player_symbol && @cells[1][0] == player_symbol && @cells[2][0] == player_symbol) || 
          (@cells[0][0] == player_symbol && @cells[0][1] == player_symbol && @cells[0][2] == player_symbol) || # Cas des lignes horizontales (3 cas)
          (@cells[1][0] == player_symbol && @cells[1][1] == player_symbol && @cells[1][2] == player_symbol) || 
          (@cells[2][0] == player_symbol && @cells[2][1] == player_symbol && @cells[2][2] == player_symbol) ||
          (@cells[0][2] == player_symbol && @cells[1][1] == player_symbol && @cells[2][0] == player_symbol) ||
          (@cells[0][0] == player_symbol && @cells[1][1] == player_symbol && @cells[2][2] == player_symbol)
          return true
        else 
          return false
        end
    end
end