# card_number = "5541808923795240"

class Credit_Check
    attr_reader :card_number

    def initialize(card_number)
        @card_number = card_number
    end

    def luhn_algorithm
        card_number_array = @card_number.to_s.chars.map(&:to_i)
            card_number_array do |card_number, index|
                if index.odd?
                    doubled_digit = card_number * 2
                end
                    if doubled_digit > 9
                        doubled_digit.to_s.chars.map(&:to_i)
                        digit_sum = double_digit.sum
                    end
            end
    end

end




# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
