class BankAccount
    def initialize(name)
        @name = name
        @transactions = []
    end
    
    def deposit(amount, options={})
        options[:memo] ||= 'Regular Deposit.'
        @transactions.push({:amount => amount, :memo => options[:memo]})
    end
end
    
bank_account = BankAccount.new("Bob")
bank_account.deposit(100)
bank_account.deposit(100, {:memo => "this was a gift."})

puts bank_account.inspect