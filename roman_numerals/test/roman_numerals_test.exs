defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals
   testData = %{
        1 => "I",
        2 => "II",
        4 =>"IV",
        5 => "V",
        6 => "VI",
        9 =>"IX",
        10 => "X",
        11 =>"XI",
        15 => "XV",
        20 => "XX",
        40 =>"XL",
        49 => "XLIX",
        50 =>"L",
        90 => "XC",
        100 =>"C",
        400 =>"CD",
        500 =>"D",
        900 =>"CM",
        1000 =>"M",
        1919 => "MCMXIX",
        2016 => "MMXVI",
   }

  for { arabic, roman} <- testData do
      @arabic arabic
      @roman roman
      test "convert #{@arabic} to #{@roman}" do
         assert RomanNumerals.to_roman(@arabic) == @roman
      end

      test "convert #{roman} to #{arabic}" do
         assert RomanNumerals.to_arabic(@roman) == @arabic
      end
  end

end
