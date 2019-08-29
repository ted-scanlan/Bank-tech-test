require 'statement'

describe Statement do

  date_double = Date.today.strftime("%d/%m/%Y")

  describe'#print' do
    it 'returns a printed statement' do
      statement = Statement.new(["#{date_double} || 500 || || 500"])
      expect(statement.print).to eq("date || credit || debit || balance\n#{date_double} || 500 || || 500")
    end


end


end
