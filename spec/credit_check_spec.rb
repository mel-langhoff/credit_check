require "rspec"
require "./lib/credit_check1.rb"

RSpec.describe CreditCheck do
    it "exists" do
        card_number1 = CreditCheck.new("5541808923795240")
        card_number2 = CreditCheck.new("5541801923795240")

        expect(card_number1.card_number).to eq("5541808923795240")
        expect(card_number2.card_number).to eq("5541801923795240")
    end

    it "#valid?" do
        card_number1 = CreditCheck.new("5541808923795240")
        card_number2 = CreditCheck.new("5541801923795240")

        expect(card_number1.valid?).to be true
        expect(card_number2.valid?).to be false
    end

end