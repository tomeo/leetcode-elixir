defmodule ReverseInteger do
  @spec reverse(x :: integer) :: integer
  def reverse(x) do
    multiple = case x do
        n when n < 0 -> -1
        _ -> 1
    end

    s = x |> abs |> to_string |> String.reverse
    res = multiple * String.to_integer(s)

    min = -2 ** 31
    max = 2 ** 31 - 1
    case res do
        n when n < min -> 0
        n when n > max -> 0
        _ -> res
    end
  end
end
