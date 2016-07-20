require './lib/game'

puts "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"

player_input = gets.chomp.downcase

valid = false
while valid == false
  case player_input
  when "p", "play"
    # initialize new Game instance
    puts "Let's play!"
    game = Game.new
    game.play
  when "i", "instructions"
    # puts instructions and return to original game start prompt
    puts "Here are the instructions"
    sleep(1)
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    player_input = gets.chomp.downcase
  when "q", "quit"
    # puts Leaving Game and exits
    valid = true
    puts "Quitting game"
    sleep(1)
  else
    puts "Command not found. Please enter again"
    player_input = gets.chomp.downcase
  end
end
