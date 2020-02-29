
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
  [2,4,6] ]

def won?(board)

WIN_COMBINATIONS.each  do  |win_combination|
  #first ways
  if win_combination.all? {|a| board[a] == "X"} || win_combination.all? {|a| board[a] == "O"}
     return  win_combination
  end

 end
 return false
end

def full?(board)
  board.all? {|z| z == "X" || z == "O"}
end

def draw?(board)
   !(won?(board)) && (full?(board))
end

def over?(board)
   if won?(board) && !full?(board)
      true
  elsif  (draw?(board) || full?(board))
    true
  else
    false
end
end

def winner(board)
  won?(board)
 if  board.all?{ |a| board[a]== "X"}
   return board[a]
 elsif board.all?{ |a| board[a]== "O"}
   return board[a]
end
end
