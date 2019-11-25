defmodule Day9 do


  def part1 do

    board = {[],[0]}
    marbles = 1..1618
    players = 1..10



    board = add_marble(board, 1)
    IO.inspect print_board(board)
    board = add_marble(board, 2)
    IO.inspect print_board(board)
    board = add_marble(board, 3)
    IO.inspect print_board(board)
    board = add_marble(board, 4)
    IO.inspect print_board(board)
    board = add_marble(board, 5)
    IO.inspect print_board(board)
    board = add_marble(board, 6)
    IO.inspect print_board(board)
    board = add_marble(board, 7)
    IO.inspect print_board(board)
    board = add_marble(board, 8)
    IO.inspect print_board(board)
    board = add_marble(board, 9)
    IO.inspect print_board(board)
    board = add_marble(board, 10)
    IO.inspect print_board(board)
    board = add_marble(board, 11)
    IO.inspect print_board(board)
    board = add_marble(board, 12)
    IO.inspect print_board(board)
    board = add_marble(board, 13)
    IO.inspect print_board(board)
    board = add_marble(board, 14)
    IO.inspect print_board(board)
    board = add_marble(board, 15)
    IO.inspect print_board(board)
    board = add_marble(board, 16)
    IO.inspect print_board(board)
    board = add_marble(board, 17)
    IO.inspect print_board(board)
    board = add_marble(board, 18)
    IO.inspect print_board(board)
    board = add_marble(board, 19)
    IO.inspect print_board(board)
    board = add_marble(board, 20)
    IO.inspect print_board(board)
    board = add_marble(board, 21)
    IO.inspect print_board(board)
    board = add_marble(board, 22)
    IO.inspect print_board(board)
    board = add_marble(board, 23)
    IO.inspect print_board(board)
    board = add_marble(board, 24)
    IO.inspect print_board(board)
    board = add_marble(board, 25)
  end

  def add_marble({[], [0]}, _) do
    {[0], [1]}
  end

  def add_marble(board, marble) do
    board = next(board)
    {visited, remaining} = next(board)
    {visited, [marble | remaining]}
  end


  def print_board({visited, [current | remaining]}) do
    current = "(" <> Integer.to_string(current) <> ")"
    Enum.reverse(visited) ++ [current] ++ remaining
  end

  @doc """
  Circular list next

  If after the move the second list is empty
  then reverse the first list  and return
  {[], reversed_first_list}

  iex> Day9.next({[3, 2, 1], [4, 5, 6]})
  {[4, 3, 2, 1], [5, 6]}

  iex> Day9.next({[5, 4, 3, 2, 1], [6]})
  {[], [1, 2, 3, 4, 5, 6]}
  """
  def next({visited, [current | []]}) do
    {[], Enum.reverse([current | visited])}
  end

  def next({visited, [current | remaining]}) do
    {[current | visited], remaining}
  end

  @doc """
  Circular list prev

  iex> Day9.prev({[3, 2, 1], [4, 5, 6]})
  {[2, 1], [3, 4, 5, 6]}

  iex> Day9.prev({[], [1, 2 ,3 ,4, 5, 6]})
  {[5, 4, 3, 2, 1], [6]}
  """
  def prev({[last | visited], remaining}) do
    {visited, [last | remaining]}
  end

  def prev({[], remaining}) do
    [current | visited] = Enum.reverse(remaining)
    {visited, [current]}
  end


end
