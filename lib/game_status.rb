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

def full? (board)
    # Declare counters
    counter=0
    board_count = 0
    while counter < 9
        if position_taken?(board, counter) == true
            board_count += 1
        end
        counter += 1 # COunter after if but inside While
    end
    if board_count < board.length
        return false
    else
        return true
    end
end


def won?(board)
    win_array = []
    if full?(board) == true
        return false
    else
        WIN_COMBINATIONS.each do |win_array|
            if board[win_array[0]] == board[win_array[1]] && board[win_array[0]] == board[win_array[2]]
                return win_array
            end
        end
    end


end
