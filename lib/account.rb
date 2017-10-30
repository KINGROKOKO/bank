require_relative 'transaction'
require_relative 'atm'

class Account
  attr_reader :name
  attr_accessor :balance, :statement

  def initialize(name)
    @name = name
    @balance = 0
    @statement = []
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @statement.reverse.each { |n| puts n.date.to_s + ' || ' + (format('%.2f', n.credit) unless n.credit.nil?).to_s + ' || ' + (format('%.2f', n.debit) unless n.debit.nil?).to_s + ' || ' + "#{format('%.2f', n.balance)}\n" }
  end
end
