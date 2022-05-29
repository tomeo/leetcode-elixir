defmodule ValidParenthesesTest do
  use ExUnit.Case
  doctest ValidParentheses

  test "Examples" do
    assert ValidParentheses.is_valid("()") === true
    assert ValidParentheses.is_valid("()[]{}") === true
    assert ValidParentheses.is_valid("(]") === false
    assert ValidParentheses.is_valid("([)]") === false
    assert ValidParentheses.is_valid("(){}}{") === false
    assert ValidParentheses.is_valid("[([]])") === false
    assert ValidParentheses.is_valid("[") === false
  end
end
