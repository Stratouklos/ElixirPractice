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

    def to_arabic(string) do
        string |>
        String.replace("CM", "DCD") |>
        String.replace("CD", "CCCC" ) |>
        String.replace("XC", "LXL") |>
        String.replace("XL", "XXXX" ) |>
        String.replace("IX" , "VIV" ) |>
        String.replace("IV", "IIII" ) |>
        String.replace( "M", "DD") |>
        String.replace("D","CCCCC" ) |>
        String.replace("C","LL" ) |>
        String.replace("L","XXXXX" ) |>
        String.replace("X", "VV") |>
        String.replace("V","IIIII") |>
        String.length
    end

end
