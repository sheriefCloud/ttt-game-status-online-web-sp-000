# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]


def won?(board)

  # return false if board is empty

  # Return false if board is full and no win (draw) - see #full?

  # Compaire to WIN_COMBINATIONS and return winning combinations if any are met for both X and Y

end

def full?(board)
    # check the board status
    #Return false if the board is not full
    # Return true if the board is not full
    # Tip use .each
end

def draw?(board)
  # Return true if the board is full and not won?
  # return false if the board is not won nad the board is not full
  # return return false if the board in won


end

def over?(board)
  # return true if the the board is won or draw or is full
  if won?(board == true || draw?(board) == true || full(board) == true)
    return true
  end
end

def winner?(board)
  # return X or O based on who won the game
end
