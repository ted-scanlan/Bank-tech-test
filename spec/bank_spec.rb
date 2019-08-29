require "./spec/spec_helper"
require 'bank'


describe Bank do

  date_double = Date.today.strftime("%d/%m/%Y")

  describe'#deposit' do
    let(:transaction) { double :transaction, :amount => 500 }

    it 'enables user to deposit 500' do
      allow(transaction).to receive(:check) { true }
      subject.deposit(transaction)
      expect(subject.total).to eq 500
    end
    it 'throws error if incorrect amount deposited' do
      allow(transaction).to receive(:check) { false }
      expect { subject.deposit(transaction) }.to raise_error('Please enter valid amount')
    end

  end
  # this didnt work but is in the officla documentation
  # obj3 = double()
  # allow(obj3).to receive(:amount) { 'a' }
  # allow(obj3).to receive(:check) { false }

  describe'#withdraw' do
    let(:transaction) { double :transaction, :amount => 500 }

    it 'enables user to withdraw 500' do
      allow(transaction).to receive(:check) { true }
      subject.withdraw(transaction)
      expect(subject.total).to eq -500
    end
  end

  describe'#print_statement' do
    let(:statement) { double :statement, :transactions => ["#{date_double} || 500 || || 500"] }
    double_statment = "date || credit || debit || balance\n#{date_double} || 500 || || 500"

    it'correctly prints a statement' do
      allow(statement).to receive(:print) { double_statment }
      expect(subject.print_statement(statement)).to eq(double_statment)

    end

  end

end






# feature

# it 'accounts for 2 deposits' do
#   allow(transaction).to receive(:check) { true }
#   allow(transaction2).to receive(:check) { true }
#   subject.deposit(transaction)
#   subject.deposit(transaction2)
#   expect(subject.print_statement).to eq("date || credit || debit || balance\n28/08/2019 || 300.00 || || 800.00\n28/08/2019 || 500.00 || || 500.00")
# end
