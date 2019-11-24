defmodule Day9 do


  def part1 do

    board = [0]
    marbles = 1..1618
    players = 1..10

  end

  def add_marble(board, marble, scores, player) do

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
