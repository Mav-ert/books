require 'rails_helper'
RSpec.describe Book, type: :model do
    subject{
        described_class.new(title: "Great Work", author: "David Sturt")
    }
    describe "Validations " do
        it "is valid with valid attributes" do
            expect(subject).to be_valid
        end
        it "is not valid without title" do
            subject.title = nil
            expect(subject).to_not be_valid
        end
        it "is not valid without author" do
            subject.author = nil
            expect(subject).to_not be_valid
        end
    end
end