defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  testData = %{
   1 => "I",
   2 => "II",
   5 => "V",
   6 => "VI",
   10 => "X",
   15 => "XV",
   20 => "XX"
   }

  for { arabic, roman} <- testData do
      @arabic arabic
      @roman roman
      test "convert #{@arabic} to #{@roman}" do
         assert RomanNumerals.to_roman(@arabic) == @roman
      end
  end

end
