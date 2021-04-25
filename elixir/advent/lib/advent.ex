defmodule Advent do
  @moduledoc """
  Documentation for `Advent`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Advent.hello()
      :world

  """
  def hello do
    :world
  end

  def start() do
    {:ok, r} = Advent.Load.lines("resources/day1.txt")
    |> Enum.map(&String.to_integer/1)
    |> Advent.Day1.solve(2020)
    IO.puts("#{r}")
  end
end
