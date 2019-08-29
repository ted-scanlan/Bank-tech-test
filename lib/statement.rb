class Statement
  attr_reader :transactions

  def initialize(transactions)

    @transactions = transactions

  end

  def print

     return "date || credit || debit || balance\n#{@transactions.reverse.join("\n")}"

  end

end
