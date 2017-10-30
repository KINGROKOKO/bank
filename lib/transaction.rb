require_relative 'atm'
require_relative 'account'

class Transaction
  attr_reader :account
  attr_accessor :date, :credit, :debit, :balance

  def initialize(account)
    @account = account
    @date = Time.now.strftime("%d/%m/%Y")
    @credit = nil
    @debit = nil
    @balance = nil
  end

end
