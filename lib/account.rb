class Account
  attr_reader :name
  attr_accessor :balance

  def initialize(name)
    @name = name
    @balance = 0
  end

end
