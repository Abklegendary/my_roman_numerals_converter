def my_roman_numerals_converter(numbers)
roman_mapping = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"

}
roman = ""
roman_mapping.each do |k, v|
    (numbers/k).times {roman << v; numbers -= k}
end
return roman
end

#puts my_roman_numerals_converter(79)