class Bank
    attr_reader :name
    @@all = []

    def initialize name
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end
    
    def accounts
    Account.all.select { |accounts| accounts.bank == self }
    end

    def members
        accounts.map { |accounts| accounts.member }.uniq
    end

    def member_with_most_accounts
        
    end

    def self.bank_with_most_accounts
        all.max_by { |bank| bank.accounts.length }
    end

end