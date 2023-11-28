card_number = "5541801923795240"
digit_sum = 0

card_digit_array = card_number.to_s.chars.map(&:to_i)

card_digit_array.each_with_index do |card_digit, index|
  if index.odd?
    doubled_digit = card_digit * 2

    if doubled_digit > 9
      doubled_digit = doubled_digit.to_s.chars.map(&:to_i)
    end

    digit_sum += Array(doubled_digit).sum
#   else
#     # digit_sum += card_digit
  end
end

if digit_sum % 10 == 0
  puts "The number #{card_number} is valid!"
else
  puts "The number #{card_number} is invalid!"
end