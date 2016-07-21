require './lib/player'
require './lib/feedback'
require 'pry'

class Game
  FLEET = [
          :ship_two,
          :ship_three
        ]

  def play
    set_player
    set_opponent
    FLEET.each do |ship|
      deploy_opp_ship(@opponent, ship)
    end
    FLEET.each do |ship|
      deploy_player_ship(@player, ship)
    end
    puts "\n\nTime to sink some ships! Good luck!\n\n"
    play_rounds
  end

  def set_opponent
    @opponent = Player.new
    @opp_targeting_queue = []
    Board::ROW.each do |row|
      Board::COLUMN.each do |column|
        @opp_targeting_queue << [row, column]
      end
    end
    @opp_targeting_queue.shuffle! #queue of randomg opponent shot coordinates
  end

  def set_player
    @player = Player.new
  end

  def deploy_opp_ship(opponent, ship)
    position = {}
    valid = false
    while valid == false
      orientation = [:horizonatal, :vertical].sample
      if orientation == :horizonatal
        rows = Board::ROW
        columns = Board::COLUMN[0..3 - opponent.send(ship).length]
      else
        rows = Board::ROW[0..3 - opponent.send(ship).length]
        columns = Board::COLUMN
      end

      position[:row] = Board::ROW.rindex(rows.sample)
      position[:column] = Board::COLUMN.rindex(columns.sample)

      if opponent.board.valid_coordinates?(opponent.send(ship), position, orientation) && opponent.board.check_clearance?(opponent.send(ship), position, orientation)
        valid = true
        opponent.board.place_ship(opponent.send(ship), position, orientation)
      end
    end
  end

  def deploy_player_ship(player, ship)
    valid = false
    while valid == false do
      print "\n"
      player.board.dispaly_board
      position_one = {}
      while valid == false do
        puts "\n\nI have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first is two units long and the\nsecond is three units long.\nThe grid has A1 at the top left and D4 at the bottom right.\n\n"
        puts "Enter the squares for the #{ship} ship: "
        input = gets.chomp.delete(" ").upcase
        if input[0] == input[2]
          orientation = :horizontal
        else
          orientation = :vertical
        end
        position_one[:row] = Board::ROW.rindex(input[0])
        position_one[:column] = Board::COLUMN.rindex(input[1])
        # position_two[:row] = Board::ROW.rindex(input.split(//, 4)[2])
        # position_one[:column] = Board::COLUMN.rindex(input.split(//, 4)[3])
        if !position_one[:row].nil? && !position_one[:column].nil?
        # && !position_two[:row].nil? && !position_two[:column].nil?
          valid = true
        else
          puts "Invalid cooridnates."
        end
      end
      valid = false
      valid_placement?(player.send(ship), position_one, orientation, valid)
    end
  end
# binding.pry
  def valid_placement?(player, position, orientation, valid)
    if player.board.valid_coordinates?(player.send(ship), position_one, orientation) && player.board.check_clearance?(player.send(ship), position_one, orientation)
      player.board.place_ship(player.send(ship), position_one, orientation)
      valid = true
    else
      puts "Invalid position for ship."
    end
  end

  def play_rounds
    # method to keep track of rounds and who wins/loses
    game_over = false
    while game_over == false
      @player.print_player_board
      player_round
      if @opponent.ships_left == 0
        winner = "Player"
        game_over = true
        next
      end
      @opponent.board.dispaly_board
      opponent_round
      if @player.ships_left == 0
        winner = "Opponent"
        game_over = true
      end
    end
    puts "\n\n#{winner} WINS!\n\n"
  end
end
