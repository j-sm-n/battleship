require './lib/game'

puts "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"

player_input = gets.chomp.downcase

case player_input
when "p", "play"
  # initialize new Game instance
  puts "Let's play!"
  Game.new
when "i", "instructions"
  # puts instructions and return to original game start prompt
  puts "Here are the instructions"
when "q", "quit"
  # puts Leaving Game and exits
  puts "Quitting game"
  sleep(1)
else
  puts "Command not found. Please enter again"
  player_input = gets.chomp.downcase
end
