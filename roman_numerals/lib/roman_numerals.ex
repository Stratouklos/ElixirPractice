defmodule RomanNumerals do

    def to_roman(n) when n < 4 do
      String.duplicate("I", n)
    end

    def to_roman(4) do
      "IV"
    end

    def to_roman(n) when n < 9 do
      "V" <> to_roman(n - 5)
    end

    def to_roman(n) when n < 10 do
      "IX" <> to_roman(n - 9)
    end

    def to_roman(n) when n < 40 do
      "X" <> to_roman(n - 10)
    end

    def to_roman(n) when n < 50 do
      "XL" <> to_roman(n - 40)
    end

    def to_roman(n) when n < 90 do
      "L" <> to_roman(n - 50)
    end

    def to_roman(n) when n < 100 do
      "XC" <> to_roman(n - 90)
    end

    def to_roman(n) when n < 400 do
      "C" <> to_roman(n - 100)
    end

    def to_roman(n) when n < 500 do
      "CD" <> to_roman(n - 400)
    end

    def to_roman(n) when n < 900 do
      "D" <> to_roman(n - 500)
    end

    def to_roman(n) when n < 1000 do
      "CM" <> to_roman(n - 900)
    end

    def to_roman(n) do
      "M" <> to_roman(n - 1000)
    end

end
