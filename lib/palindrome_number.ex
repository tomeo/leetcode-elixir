defmodule PalindromeNumber do
  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) do
    s = to_string(x)
    s === String.reverse(s)
  end
end
