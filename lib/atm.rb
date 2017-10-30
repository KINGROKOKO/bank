class Atm

  def deposit(account, amount)
    account.balance += amount
  end

  def withdraw(account, amount)
    account.balance -= amount
  end

end
