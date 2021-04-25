defmodule Advent.Sum do

  def pair_that_sums_to(numbers, total) do
    min = Enum.sort(numbers)
    max = Enum.reverse(min)
    entries_that_sum(min, max, total)
  end

  defguardp eq(min, max, total) when (min + max) == total
  defguardp greater(min, max, total) when (min + max) > total
  defguardp less(min, max, total) when (min + max) < total

  defp entries_that_sum([min_head|_min_tail], [max_head|_max_tail], total) when eq(min_head, max_head, total) do
    {:ok, {min_head, max_head}}
  end

  defp entries_that_sum([min_head|_min_tail] = min, [max_head|max_tail], total) when greater(min_head, max_head, total) do
    entries_that_sum(min, max_tail, total)
  end

  defp entries_that_sum([min_head|min_tail], [max_head|_max_tail] = max, total) when less(min_head, max_head, total) do
    entries_that_sum(min_tail, max, total)
  end

  defp entries_that_sum([], _max, total), do: {:error, "No number combinations that sum to #{total}" }
  defp entries_that_sum(_min, [], total), do: {:error, "No number combinations that sum to #{total}" }

  defp entries_3([min_hd|[min_hd2|min_tail2] = min_tail] = min, [max_hd|[max_hd2|max_tail2] = max_tail] = max, total) do
  end
end
