module Feedback
  def opponent_has_placed_ship
    puts "\n\nI have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first is two units long and the\nsecond is three units long.\nThe grid has A1 at the top left and D4 at the bottom right.\n\n"
  end

  def set_ship_two
    puts "Enter the squares for the two-unit ship: "
  end

  def set_ship_three
    puts "Enter the squares for the three-unit ship: "
  end
end
