require './lib/player'

class Game

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
end
