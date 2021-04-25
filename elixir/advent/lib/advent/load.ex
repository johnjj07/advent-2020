defmodule Advent.Load do
  def load_stream(path) do
    File.stream!(path)
  end

  def load_file(path) do
    {:ok, lines} = File.read(path)
    lines
  end

  def lines(path) do
    load_file(path)
    |> String.split("\n", trim: true)
    |> Enum.map(&String.trim/1)
  end
end
