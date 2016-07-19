require './lib/player'

class Game
  FLEET = [
          :ship_two,
          :ship_three
        ]

  def play
    set_player
    set_opponent
    puts "I have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first is two units long and the\nsecond is three units long.\nThe grid has A1 at the top left and D4 at the bottom right.\n\nEnter the squares for the two-unit ship:"
    FLEET.each do |ship|
      deploy_ship(@player, ship)
    end
    FLEET.each do |ship|
      deploy_opp_ship(@opponent, ship)
    end
    play_rounds
  end

  def play_rounds
    # method to keep track of rounds and who wins/loses
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
end
