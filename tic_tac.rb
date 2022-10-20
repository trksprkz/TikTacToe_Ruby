# Make a Tic-Tac-Toe game in the command line between two players
# Show board

class Player
  attr_accessor :name, :num_guess, :pick, :placepoint
  def initialization(name, num_guess, pick, placepoint)
    @name = name
    @age = age
    @pick = pick
    @placepoint = placepoint
  end

    def self.addInfo
      name = prompt 'What is your name?'
      num_guess = prompt 'Pick a random number 1 - 10 '.to_i
    end

    def random_number
      random_number = puts "The random number was #{rand(11)}"
    end
  def display_board
    puts row = ["   " "|" "   " "|" "   "]
    puts separator = "-----------"
    puts row
    puts separator
    puts row
  end
end

player1 = Player.new(gets.chomp, gets.chomp.to_i, gets.chomp, gets.chomp)
player2 = Player.new(gets.chomp,gets.chomp.to_i, gets.chomp, gets.chomp)


