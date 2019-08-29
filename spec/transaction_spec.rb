require 'transaction'

describe Transaction do

  describe'#check' do
    it 'checks if amount is valid' do
      transaction = Transaction.new(500)
      expect(transaction.check).to be true

    end
    it 'returns false if amount invalid' do
      transaction = Transaction.new('a')
      expect(transaction.check).to be false

    end

  end

end
