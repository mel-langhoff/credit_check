require "./lib/user_interface.rb"

RSpec.describe UserInterface do
    it "can initialize" do
        user_input = UserInterface.new

        expect(user_input).to be_an_instance_of UserInterface
    end
end