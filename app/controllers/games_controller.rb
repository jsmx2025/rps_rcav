class GamesController < ApplicationController
  # Only time you capitalize in Ruby is the first letter of a class
  # Use underscore to separate words except for in class names...snake case vs. camel vase
def play_rock
  @computer_move = ["rock", "paper", "scissors"].sample
  if @computer_move == "rock"
    @outcome = "tied"
  elsif @computer_move == "paper"
    @outcome = "lost"
  else
    @outcome = "wo"
  end


  render("/games/play_rock.html.erb")
end

def play_paper
  render("/games/play_paper.html.erb")
end

def play_scissors
  render("/games/play_scissors.html.erb")
end

end
