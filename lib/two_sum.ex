defmodule TwoSum do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    indexed_nums = Enum.with_index(nums)
    nums_to_index = Map.new(indexed_nums)

    {n, i} =
      indexed_nums
      |> Enum.find(fn {n, i} ->
        Map.has_key?(nums_to_index, target - n) and Map.get(nums_to_index, target - n) !== i
      end)

    [i, Map.get(nums_to_index, target - n)]
  end
end
