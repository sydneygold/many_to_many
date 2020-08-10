class Member
    attr_reader :name, :age
    @@all = []

    def initialize name, age
        @name = name
        @age = age

        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select { |accounts| accounts.member == self }
    end

    def banks
        accounts.map { |account| account.bank}.uniq
    end

    def self.member_with_most_accounts
        all.max_by { |member| member.accounts.length }
    end

end