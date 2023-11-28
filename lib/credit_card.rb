class CreditCard
    attr_reader :card_number, :limit

    def initialize(card_number, limit)
        @card_number = card_number
        @limit = limit
    end

    def is_valid?
        digit_sum = 0
        card_digit_array = @card_number.chars.map(&:to_i)

        card_digit_array.each_with_index do |card_digit, index|
        if index.odd?
            doubled_digit = card_digit * 2

            if doubled_digit > 9
            digit_sum = doubled_digit.to_s.chars.map(&:to_i).sum
            end

            digit_sum = Array(doubled_digit).sum
        else
            digit_sum = card_digit
        end
    end

        if digit_sum % 10 == 0
            true
        end
    end

    def last_four
       @card_number[-4..-1]
    end
end
