class Transaction
  attr_reader :amount, :check

def initialize(amount)
  @amount = amount
end

def check

  @amount.is_a?(Integer)

end

end
