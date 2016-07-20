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
    puts "Prepare For Battle\n\nThe computer will place ships and then you will be prompted to place ships. Select the start and end coordinates you wish the ship to occupy.\nRules for placing ships:\nPlace each ship in any horizontal or vertical position, but not diagonally.\nDo not place a ship that any part of it overlaps letters, numbers, the edge of the grid, or another ship.\nHow to Play\n\nOn your turn pick a target space to attack and enter its location by letter and number.\nIf you pick a space occupied by a ship on your opponent's ocean grid, your shot is a hit!\n\nIt's a Miss!\nIf you pick a space that is not occupied by a ship on your opponent's ocean grid, it is a miss.\nAfter a hit or miss, your turn is over.\nPlay continues in this manner, with you and your opponent picking spaces one shot per turn.\n\nSinking a Ship\nOnce all the spaces any one ship occupies have been attacked, it has been sunk.\n\nWinning the Game\nIf you are the first player to sink all of your opponents ships, you win the game!"
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
