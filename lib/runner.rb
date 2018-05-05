require './lib/credit_check'

puts "Welcome to credit check.  To see if your credit card is valid please enter the number: "

cc_number = gets.chomp
credit_check = CreditCheck.new(cc_number)
credit_check.check_validity
