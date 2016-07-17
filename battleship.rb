puts "Welcome to BATTLESHIP

Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

player_input = gets.chomp

if player_input.downcase == "p" || "play"
  # initialize new Game instance
elsif player_input.downcase == "i" || "instructions"
  # puts instructions and return to original game start prompt
elsif player_input.downcase == "q" || "quit"
  # puts Leaving Game and exits
else
  puts "Command not found. Please enter again"
  player_input = gets.chomp
end
