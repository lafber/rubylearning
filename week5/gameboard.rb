=begin

|-----------------------|
| Week 5  | Exercice 3 |
|---------------------|

Here are the program specifications for a simple game to be played against the computer.

This game is played at the command-line.
The game starts when the computer selects three consecutive cells in a 7 cell row (from 0 to 6). When that's complete, the game asks for your first guess.
Guess the computer's selected cells in the smallest number of guesses. You are given a rating or level, based on how well you perform.
At the command line, the user types in a number from 0 to 6. The computer checks if it's one of the selected cells. If it's a hit, increment the no_of_hits variable. In response to your guess, you'll see a result at the command-line: either "Hit", "Miss" or "End".
When you have guessed all three cells, the game ends by printing out your rating (your number of guesses).
Note:

Use only the features we have learned so far, in Ruby.
You must design the GameBoard class.
The testgameboard.rb program uses your GameBoard class (This is the 'client' software.)

=end


#### GameBoard Class ####

class GameBoard

  attr_reader :no_of_hits, :cells_hits

  def initialize()
    @no_of_hits    = 0 #current number of hits
    @hits_to_win   = 3 #numbers of hits necessary to win
    @cells_hits    = Array.new  # keep track of what was hit
  end


  def set_locations_cells(cells)
    @filled_cells = cells
  end


  def check_yourself(user_guess)
    
    user_guess = user_guess.to_i
     
#   Did the user hit a filled cells ?   
    if @filled_cells.include?(user_guess) and not @cells_hits.include?(user_guess)    
      @no_of_hits += 1    # 1 more hit
      @cells_hits.push(user_guess) # keep track of the hit  
      (@no_of_hits == @hits_to_win) ? (puts 'End'; return 'kill') : (puts 'Hit') #   If the user win (3 hits) output End instead of Hit 
    elsif
      puts 'Miss'
    end
    
  end

end