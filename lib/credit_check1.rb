# card_number = "5541808923795240"

class CreditCheck
    attr_reader :card_number, :digit_sum

    def initialize(card_number)
        @card_number = card_number
        @digit_sum = 0
    end

    def luhn_algorithm
        card_number_array = @card_number.to_s.chars.map(&:to_i)
            card_number_array do |card_digit, index|
                if index.odd?
                    doubled_digit = card_digit * 2
                end
                    if doubled_digit > 9
                        doubled_digit.to_s.chars.map(&:to_i)
                        digit_sum = double_digit.flatten.sum
                    end
        valid?(digit_sum)
            end
    end

    def valid?(digit_sum)
        if digit_sum % 10 == 0
            true
            puts "The number #{@card_number} is valid!"
        else
            false
            puts "The number #{@card_number} is invalid!"
        end
    end

end