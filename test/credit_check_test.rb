require "rspec"
require "./lib/credit_check.rb"

RSpec.describe Credit_Check do
    it "exists" do
        card_number1 = Card.new("5541808923795240")
        card_number2 = Card.new("5541801923795240")

        expect(card_number1).to be true
        expect(card_number2).to be false
    end


end