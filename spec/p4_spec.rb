require 'p4'

RSpec.describe BankAccount do
    let(:bal) {BankAccount.new}

    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        bal.deposit(200)
        expect(bal.balance).to eq(200)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        bal.deposit(150)
        bal.withdraw(50)
        expect(bal.balance).to eq(100)
      end
  
      it "does not change the balance if insufficient funds" do
        bal2 = BankAccount.new(100)
        bal2.withdraw(250)
        expect(bal2.balance).to eq(100)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        bal.deposit(230)
        expect(bal.balance).to eq(230)
      end
    end
end
  