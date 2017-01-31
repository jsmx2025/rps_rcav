class GamesController < ApplicationController
  # Only time you capitalize in Ruby is the first letter of a class
  # Use underscore to separate words except for in class names...snake case vs. camel vase
def play_rock
  @computer_move = ["rock", "paper", "scissors"].sample
  if @computer_move == "rock"
    @outcome = "tie"
  elsif @computer_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  render("/games/play_rock.html.erb")
end

end

def play_paper
  @computer_move = ["rock", "paper", "scissors"].sample
  if @computer_move == "rock"
    @outcome = "won"
  elsif @computer_move == "scissors"
    @outcome = "lost"
  else
    @outcome = "tie"
  render("/games/play_paper.html.erb")
end

end

def play_scissors
  @computer_move = ["rock", "paper", "scissors"].sample
  if @computer_move == "rock"
    @outcome = "lost"
  elsif @computer_move == "scissors"
    @outcome = "tie"
  else
    @outcome = "won"
  render("/games/play_scissors.html.erb")
end

def read
  @read = "Welcome to Rock, Paper, Scissors where you'll play a game of the same name"
render("/games/read.html.erb")
end

@rock = "fa fa-hand-rock-o move-icon"
@scissors = "fa fa-hand-scissors-o move-icon"
@paper = "fa fa-hand-paper-o move-icon"

end
end
