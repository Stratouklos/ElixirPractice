defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals


  test "the truth" do
    assert RomanNumerals.to_roman(1) == "I"
  end
end
