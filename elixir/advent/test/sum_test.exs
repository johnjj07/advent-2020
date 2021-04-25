defmodule AdventSumTest do
  use ExUnit.Case
  alias Advent.Sum

  test "sum to 2020" do
    Sum.pair_that_sums_to([1721, 979, 366, 299, 675, 1456], 2020) == {:ok, {299, 1721}}
  end

  test "numbers don't sum" do
    assert {:error, _} = Sum.pair_that_sums_to([1, 2, 3, 4], 2020)
  end
end
