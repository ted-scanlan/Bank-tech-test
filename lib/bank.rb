require 'date'
require 'transaction'
require 'statement'

class Bank
  attr_reader :total

  def initialize
    @total = 0
    @transactions = []

  end

  def deposit(transaction = Transaction.new(amount))
    raise "Please enter valid amount" if transaction.check == false
    @total += transaction.amount
    @transactions << "#{Date.today.strftime("%d/%m/%Y")} || #{'%.2f' % transaction.amount} || || #{'%.2f' % @total}"

  end

  def withdraw(transaction = Transaction.new(amount))
    raise "Please enter valid amount" if transaction.check == false
    @total -= transaction.amount
    @transactions << "#{Date.today.strftime("%d/%m/%Y")} || || #{'%.2f' % transaction.amount} || #{'%.2f' % @total}"

  end

  def print_statement(statement = Statement.new(@transactions))

    statement.print

  end


end
