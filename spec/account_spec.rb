require './lib/account'
require './lib/atm'
require './lib/transaction'

describe Account do
  it 'confirms customer can open an account with name and balance 0' do
    customer = Account.new('thomas')
    expect(customer.name).to eq('thomas')
    expect(customer.balance).to eq(0)
  end

  it 'confirms statement is generated with new account' do
    customer = Account.new('thomas')
    expect(customer.statement).to eq([])
  end
end
