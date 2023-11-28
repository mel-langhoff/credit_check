require "rspec"
require "./lib/credit_card"

RSpec.describe CreditCard do
    it "exists" do
        credit_card = CreditCard.new("5541808923795240", 15000)

        expect(credit_card.card_number).to eq("5541808923795240")
        expect(credit_card.limit).to eq(15000)
    end

    it "#last_four" do
        credit_card = CreditCard.new("5541808923795240", 15000)

        expect(credit_card.last_four).to eq("5240")
    end

    it "#is_valid?" do
        credit_card = CreditCard.new("5541808923795240", 15000)

        expect(credit_card.is_valid?).to be true
    end

end