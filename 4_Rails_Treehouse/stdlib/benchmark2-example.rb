require 'benchmark'

repetitions = 1000000

class BankAccount
    def initialize(name)
        @name = name
        @transactions = []
    end
    
    def deposit(amount)
        @transactions.push(amount)
    end
    
    def withdraw(amount)
        @transactions.push(-amount)
    end
end

BankStruct = Struct.new('BrankStruct', :name, :transactions)

Benchmark.bm(20) do |x|
    x.report "BankAccount Class" do
        repetitions.times do
            account = BankAccount.new('Bob Kolstad')
            account.deposit(100)
            account.withdraw(50)
        end
    end
    
    x.report "BankAccount Struct" do
        repetitions.times do
            account = BankStruct.new('Bob Kolstad', [])
            account.name = 'Bob Kolstad'
            account.transactions.push(100)
            account.transactions.push(-50)
        end
    end
end