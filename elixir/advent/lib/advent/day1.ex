defmodule Advent.Day1 do
  alias Advent.Sum

  def solve(entries, sum) do
    Sum.pair_that_sums_to(entries, sum)
    |> calculate_total()
  end

  defp calculate_total({:ok, {x, y}}), do: {:ok, x * y}
  defp calculate_total({:error, msg}), do: {:error, msg}

end
