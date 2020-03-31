require "pry"

class BankAccount
  # attr_reader :balance
  # attr_writer :balance
  attr_accessor :balance
  attr_reader :user_id

  @@all = []

  def self.all
    p self # BankAccount
    @@all
  end
  
  def initialize(balance, id = 42)
    p "in initialize method, making an instance"
    @balance = balance
    @user_id = id 
    @@all << self
  end

  def to_s
    # cat = "Whiskers"
    # p cat
    <<~OUTPUT
      I am an account with a balance of #{balance}
      My user id is #{user_id}
    OUTPUT
  end

  def user_id
    @user_id
  end

  # def balance
  #   @balance
  # end

  # def balance=(new_balance)
  #   @balance = new_balance
  # end

  # def user_id
  #   @user_id
  # end


  def deposit(amount)
    # self.balance=(self.balance + amount)
    self.balance += amount
  end

  def withdraw(amount)
    # if amount to withdraw is smaller or equal to current balance
    # then withdraw, otherwise error out
    if amount <= balance
      self.balance -= amount
    else
      raise ArgumentError, "Nope! Too much to want, not enough to have..."
    end
  end

end


account = BankAccount.new(100, 1)
account_two = BankAccount.new(300)

# all_accounts = [account, account_two]

# all_accounts.each do |acct|
#   p acct
#   puts acct.user_id
# end

binding.pry