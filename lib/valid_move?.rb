

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  end
end
