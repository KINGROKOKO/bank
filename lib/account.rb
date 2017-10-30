require_relative 'transaction'
require_relative 'atm'

class Account
  attr_reader :name
  attr_accessor :balance,  :statement

  def initialize(name)
    @name = name
    @balance = 0
    @statement = []
  end

  def print_statement
    @statement.each{|n| puts n.date, n.credit, n.debit, n.balance}
  end

end
