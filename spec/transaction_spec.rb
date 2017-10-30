require './lib/account'
require './lib/atm'
require './lib/transaction'

describe Transaction do
  it 'confirm new transaction can be made' do
    customer = Account.new('thomas')
    transaction = Transaction.new(customer)
    expect(transaction.account).to eq(customer)
  end

  it 'confirm transaction updated with credit' do
    customer = Account.new('thomas')
    atm = Atm.new(customer)
    atm.deposit(5)
    expect(customer.statement[0].balance).to eq(5)
    expect(customer.statement[0].credit).to eq(5)
  end

  it 'confirm transaction updated with withdrawal from account' do
    customer = Account.new('thomas')
    atm = Atm.new(customer)
    atm.deposit(5)
    atm.withdraw(5)
    expect(customer.statement[1].balance).to eq(0)
    expect(customer.statement[1].debit).to eq(5)
  end

  it 'confirm transaction updated with date' do
    customer = Account.new('thomas')
    atm = Atm.new(customer)
    atm.deposit(5)
    expect(customer.statement[0].date).to eq(Time.now.strftime('%d/%m/%Y'))
  end
end
