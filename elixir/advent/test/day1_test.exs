defmodule Day1Test do
  use ExUnit.Case

  test "sum to 2020" do
    assert Advent.Day1.solve([1721, 979, 366, 299, 675, 1456], 2020) == {:ok, 514579}
  end

  test "numbers dont sum" do
    assert {:error, _} = Advent.Day1.solve([1, 2, 3, 4], 2020)
  end
end
