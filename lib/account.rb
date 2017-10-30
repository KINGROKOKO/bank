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
    puts "date || credit || debit || balance"
    @statement.each{|n| puts "#{n.date}" + " || " + "#{'%.2f' % n.credit if n.credit != nil}" + " || " + "#{'%.2f' % n.debit if n.debit != nil}" + " || " + "#{'%.2f' % n.balance}\n"}
  end

end
