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
#variable "roman" as an empty string, then iterates over the elements in the hash "roman_mapping".
 #For each key-value pair (k, v) in the hash, it performs the following actions:

#Determines the number of times k goes into num using the expression (num / k).
#For that number of times, it appends v to the string "roman".
#Finally, it subtracts k times the number of times it went into num from num.
roman = ""
roman_mapping.each do |k, v|
    (numbers/k).times {roman << v; numbers -= k}
end
return roman
end

#puts my_roman_numerals_converter(79)