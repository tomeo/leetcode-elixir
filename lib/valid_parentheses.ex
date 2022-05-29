defmodule ValidParentheses do
  defp is_valid(<<?(, tail::binary>>, stack),
    do: is_valid(tail, <<?(, stack::binary>>)

  defp is_valid(<<?{, tail::binary>>, stack),
    do: is_valid(tail, <<?{, stack::binary>>)

  defp is_valid(<<?[, tail::binary>>, stack),
    do: is_valid(tail, <<?[, stack::binary>>)

  defp is_valid(<<?), tail::binary>>, <<?(, rest::binary>>),
    do: is_valid(tail, rest)

  defp is_valid(<<?}, tail::binary>>, <<?{, rest::binary>>),
    do: is_valid(tail, rest)

  defp is_valid(<<?], tail::binary>>, <<?[, rest::binary>>),
    do: is_valid(tail, rest)

  defp is_valid(<<>>, <<>>), do: true

  defp is_valid(_, _), do: false

  def is_valid(s), do: is_valid(s, <<>>)
end
