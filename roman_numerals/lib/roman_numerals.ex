defmodule RomanNumerals do

    def to_roman(n) do
        String.duplicate("I", n) |>
        String.replace("IIIII", "V") |>
        String.replace("VV", "X") |>
        String.replace("XXXXX", "L") |>
        String.replace("LL", "C") |>
        String.replace("CCCCC", "D") |>
        String.replace("DD", "M") |>
        String.replace("IIII", "IV") |>
        String.replace("VIV", "IX") |>
        String.replace("XXXX", "XL") |>
        String.replace("LXL", "XC") |>
        String.replace("CCCC", "CD") |>
        String.replace("DCD", "CM")

    end

end
