require_relative '../lib/display_board.rb'
require_relative '../lib/input_to_index.rb'
require_relative '../lib/valid_move?.rb'
require_relative '../lib/position_taken.rb'

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = user_input.to_i - 1
  until valid_move?(board, index) == true
    input_to_index(user_input)
    valid_move?(board, index)
    puts "invalid move try again"
  end
end
