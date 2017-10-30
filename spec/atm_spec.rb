

require './lib/account'
require './lib/atm'
require './lib/transaction'

describe Atm do
  it 'confirms customer can make a deposit and increase balance' do
    account = Account.new('thomas')
    subject.deposit(account,5)
    expect(account.balance).to eq(5)
  end

  it 'confirms customer can make a withdrawal and decrease balance' do
    account = Account.new('thomas')
    subject.deposit(account,5)
    subject.withdraw(account,5)
    expect(account.balance).to eq(0)
  end
end
