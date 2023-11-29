class UserInterface
    attr_reader :card_number

    def initialize
        @digit_sum = 0
        @card_number = card_number
    end

    def validate_user_card_number
        puts "Please enter a credit card number to validate."
        @card_number = gets.chomp
        @digit_sum = calculate_sum_digit

            if @digit_sum % 10 == 0
                puts "The number #{card_number} is valid!"
            else
                puts "The number #{card_number} is invalid!"
            end

        end

    def calculate_sum_digit
        digit_sum = 0
        card_digit_array = card_number.chars.map(&:to_i)

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
        digit_sum
    end
end

user_interface = UserInterface.new
user_interface.validate_user_card_number
