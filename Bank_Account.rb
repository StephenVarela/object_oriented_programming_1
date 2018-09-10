class Bank_Account

  def initialize(balance, interest)
    @balance = balance
    @interest = interest
  end

  def balance
    return @balance
  end

  def interest
    return interest
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance *= (1+@interest)
  end

end

account = Bank_Account.new(100, 0.1)

puts "Initial balance 100"

account.deposit(1000)
puts "After depositing 1000: #{account.balance}"

account.withdraw(150)
puts "After withdrawing 150: #{account.balance}"

account.gain_interest
puts "after interest: #{account.balance}"
