require_relative './bank'
require_relative './member'
require_relative './account'
require 'pry'


bank1 = Bank.new "Chase"
bank2 = Bank.new "Wells Fargo"
bank3 = Bank.new "Bank of America"

damon = Member.new "Damon", 26
tj = Member.new "TJ", 25
sydney = Member.new "Sydney", 24

account1 = Account.new bank1, damon, 123456
account2 = Account.new bank1, tj, 124356
account3 = Account.new bank2, tj, 593740
account4 = Account.new bank3, sydney, 368464

binding.pry
