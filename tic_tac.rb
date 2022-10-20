class Board
  # Creates board for game to be played on
  @@arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  @@turns = 0
  @@game_over = false

  def welcome
    puts "Tic-Tac-Toe\n"
    @@arr.each { |x| puts x.join(' ')}
    puts "Player one will be 'x' and player two will be 'o'!"
  end

  def initialize
    welcome
    play_game
  end

  def play
    while @@game_over == false
        row = ' '
        column = ' '
        if @@turns.even? == true
          puts 'Player One: '
        else
          puts 'Player Two: '
        end
        loop do
          puts 'Pick a row, 0-2'
          row = gets.chomp.to_i
          break if row.between?(0, 2)
          puts 'Error: Must be 0, 1, or 2!'
        end
        loop do
          puts 'Pick a column, 0-2'
          column = gets.chomp.to_i
          break if column.between?(0, 2)
          puts 'Error: Must be 0, 1, or 2!'
        end

        if @@arr[row][column] == 'x' || @@arr[row][column] == 'o'
          puts 'Please select an unoccupied square!'
          play
        else
          if @@turns.even? == true
            @@arr[row][column] = 'x'
          else
            @@arr[row][column] = 'o'
          end
        @@turns += 1
        puts 'Tic-Tac-Toe'
        @@arr.each { |x| puts x.join(' ')}
        check_winner
        if @@turns == 9
          @@game_over = true
          puts 'Game over - tie game!'
        end
        end
    end
  end

  def check_winner
    if
      @@arr[0][0] == 'x' && @@arr[0][1] == 'x' && @@arr[0][2] == 'x' ||
      @@arr[1][0] == 'x' && @@arr[1][1] == 'x' && @@arr[1][2] == 'x' ||
      @@arr[2][0] == 'x' && @@arr[2][1] == 'x' && @@arr[2][2] == 'x' ||
      @@arr[0][0] == 'x' && @@arr[1][0] == 'x' && @@arr[2][0] == 'x' ||
      @@arr[0][1] == 'x' && @@arr[1][1] == 'x' && @@arr[2][1] == 'x' ||
      @@arr[0][2] == 'x' && @@arr[1][2] == 'x' && @@arr[2][2] == 'x' ||
      @@arr[0][0] == 'x' && @@arr[1][1] == 'x' && @@arr[2][2] == 'x' ||
      @@arr[0][2] == 'x' && @@arr[1][1] == 'x' && @@arr[2][0] == 'x'
      @@game_over = true
      puts 'Player 1 wins!'
      end_game
    end
    if
        @@arr[0][0] == 'o' && @@arr[0][1] == 'o' && @@arr[0][2] == 'o' ||
        @@arr[1][0] == 'o' && @@arr[1][1] == 'o' && @@arr[1][2] == 'o' ||
        @@arr[2][0] == 'o' && @@arr[2][1] == 'o' && @@arr[2][2] == 'o' ||
        @@arr[0][0] == 'o' && @@arr[1][0] == 'o' && @@arr[2][0] == 'o' ||
        @@arr[0][1] == 'o' && @@arr[1][1] == 'o' && @@arr[2][1] == 'o' ||
        @@arr[0][2] == 'o' && @@arr[1][2] == 'o' && @@arr[2][2] == 'o' ||
        @@arr[0][0] == 'o' && @@arr[1][1] == 'o' && @@arr[2][2] == 'o' ||
        @@arr[0][2] == 'o' && @@arr[1][1] == 'o' && @@arr[2][0] == 'o'
        @@game_over = true
        puts 'Player 2 wins!'
        end_game
    end
  end

  def play_game
    while @@turns < 9
      play
    end
  end

  def end_game
    if @@game_over == true
        exit
    end
  end

end

game = Board.new
