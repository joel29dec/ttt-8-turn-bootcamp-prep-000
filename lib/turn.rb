def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(str)
  num = str.to_i
  num -= 1
end

def move (array, index, value = "X")
  array[index] = value
end

def valid_move? (board, index)
  if board[index]  == "X" || board[index] == "O" || index < 0 || index > 8
  false
  elsif board[index] == " " || board[index] == "" || board[index] == nil && index.between?(0, 8)
  true
  end
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if index.between?(0,8)
  valid_move?(board, index)
  move(board, index)
  display_board(board)
  else
  turn(board)
  end
end
