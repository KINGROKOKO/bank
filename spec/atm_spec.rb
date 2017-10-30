require './lib/account'
require './lib/atm'
require './lib/transaction'

describe Atm do
  it 'confirms customer can make a deposit and increase balance' do
    account = Account.new('thomas')
    atm = Atm.new(account)
    atm.deposit(5)
    expect(account.balance).to eq(5)
  end

  it 'confirms customer can make a withdrawal and decrease balance' do
    account = Account.new('thomas')
    atm = Atm.new(account)
    atm.deposit(5)
    atm.withdraw(5)
    expect(account.balance).to eq(0)
  end

  it 'confirms customer can print statement of transactions' do
    account = Account.new('thomas')
    atm = Atm.new(account)
    atm.deposit(5)
    atm.withdraw(5)
    expect(atm.print_statement).to eq(account.statement)
  end
end
