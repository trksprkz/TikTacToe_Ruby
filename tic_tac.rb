# Make a Tic-Tac-Toe game in the command line between two players
# Show board
def prompt question
  print "What is your name"
  gets
end

class Player
  attr_reader :name
  def initialization(name, num_guess, pick, placepoint)
    @name = name
    @age = age
    @pick = pick
    @placepoint = placepoint
  end

    def self.addInfo
      name = prompt 'What is your name?'
      num_guess = prompt 'Pick a random number 1 - 10 '
    end

  def display_board
    puts row = ["   " "|" "   " "|" "   "]
    puts separator = "-----------"
    puts row
    puts separator
    puts row
  end

end


