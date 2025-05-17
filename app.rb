require "sinatra"
require "sinatra/reloader" if development?

get("/") do
  erb(:index)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @computer_move = moves.sample

  if @computer_move == "rock"
    @outcome = "We tied!"
  elsif @computer_move == "paper"
    @outcome = "We lost!"
  else
    @outcome = "We won!"
  end

  erb(:move)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  @computer_move = moves.sample

  if @computer_move == "rock"
    @outcome = "We won!"
  elsif @computer_move == "paper"
    @outcome = "We tied!"
  else
    @outcome = "We lost!"
  end

  erb(:move)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @computer_move = moves.sample

  if @computer_move == "rock"
    @outcome = "We lost!"
  elsif @computer_move == "paper"
    @outcome = "We won!"
  else
    @outcome = "We tied!"
  end

  erb(:move)
end
