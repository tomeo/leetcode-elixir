defmodule PalindromeNumberTest do
  use ExUnit.Case
  doctest PalindromeNumber

  test "Examples" do
    assert PalindromeNumber.is_palindrome(121) === true
    assert PalindromeNumber.is_palindrome(-121) === false
    assert PalindromeNumber.is_palindrome(10) === false
  end
end
