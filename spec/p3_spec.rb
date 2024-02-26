require 'p3'

RSpec.describe StringWrapper do
    let(:word) {StringWrapper.new("GoodBye")}

    describe "#reverse" do
      it "reverses the string" do
        expect(word.reverse).to eq("eyBdooG")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        expect(word.upcase).to eq("GOODBYE")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        expect(word.downcase).to eq("goodbye")
      end
    end
end
  