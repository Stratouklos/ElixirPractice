defmodule RomanNumerals do

    def to_roman(n) when n < 5 do
      String.duplicate("I", n)
    end

    def to_roman(n) when n < 10 do
      "V" <> to_roman(n - 5)
    end

    def to_roman(n)  do
      "X" <> to_roman(n - 10)
    end

end
