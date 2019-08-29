require 'bank'
require 'statement'
require 'transaction'

describe Bank do

    date_double = Date.today.strftime("%d/%m/%Y")
    double_statement = "date || credit || debit || balance\n#{date_double} || 500.00 || || 500.00"
    double_statement2 = "date || credit || debit || balance\n#{date_double} || || 300.00 || 200.00\n#{date_double} || 500.00 || || 500.00"

it 'returns correct statement after user deposits 500' do
  bank = Bank.new
  bank.deposit(Transaction.new(500))
  expect(bank.print_statement).to eq(double_statement)

end

it 'accounts for deposit and withdraw' do
  bank = Bank.new
  bank.deposit(Transaction.new(500))
  bank.withdraw(Transaction.new(300))
  expect(bank.print_statement).to eq(double_statement2)
end
end
