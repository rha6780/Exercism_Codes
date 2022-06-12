module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      return (-3.213).to_f
    elsif balance >= 0 and balance < 1000
      return (0.5).to_f
    elsif balance >= 1000 and balance < 5000
      return (1.621).to_f
    else
      return (2.475).to_f
    end
  end

  def self.annual_balance_update(balance)
    rate = SavingsAccount.interest_rate(balance).to_f    
    
    if rate < 0
      account = balance + (balance * (rate * -0.01)).to_f
    else
      account = balance + (balance * (rate * 0.01)).to_f
    end
    account
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    year = 0
    while current_balance < desired_balance
      current_balance = self.annual_balance_update(current_balance)
      year += 1
    end
    year
  end
end
