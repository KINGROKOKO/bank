require_relative 'transaction'
require_relative 'account'

class Atm
  attr_reader :account

  def initialize(account)
    @account = account
  end

  def deposit(amount)
    @transaction = Transaction.new(@account)
    @amount = amount
    @account.balance += amount
    @transaction.credit = @amount
    transaction_update
  end

  def withdraw(amount)
    @transaction = Transaction.new(@account)
    @amount = amount
    @account.balance -= amount
    @transaction.debit = @amount
    transaction_update
  end

  def transaction_update
    @transaction.balance = @account.balance
    @transaction.date = Time.now.strftime("%d/%m/%Y")
    @account.statement << @transaction
  end

  def print_statement
    @account.print_statement
  end

end
