defmodule ReverseIntegerTest do
  use ExUnit.Case
  doctest ReverseInteger

  test "Examples" do
    assert ReverseInteger.reverse(123) === 321
    assert ReverseInteger.reverse(-123) === -321
    assert ReverseInteger.reverse(120) === 21
  end
end
