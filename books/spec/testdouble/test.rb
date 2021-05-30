#idk what im doing
require 'rails_helper'
describe "#index" do
    it "does something" do
        boon = double("book")
        expect(boon).to receive(:title).with("Idk wat im doing")
    end 
end