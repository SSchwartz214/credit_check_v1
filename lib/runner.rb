require './lib/credit_check'

cc_number_1 = "4929735477250543"
cc_number_2 = "5541801923795240"
cc_number_3 = "342804633855673"
cc_number_4 = "342801633855673"

credit_check_1 = CreditCheck.new(cc_number_1)
credit_check_2 = CreditCheck.new(cc_number_2)
credit_check_3 = CreditCheck.new(cc_number_3)
credit_check_4 = CreditCheck.new(cc_number_4)

credit_check_1.check_validity
credit_check_2.check_validity
credit_check_3.check_validity
credit_check_4.check_validity
