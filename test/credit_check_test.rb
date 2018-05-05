require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

class CreditCheckTest < Minitest::Test

  def setup
    cc_number_1 = "4929735477250543"
    cc_number_2 = "5541801923795240"
    cc_number_3 = "342804633855673"
    cc_number_4 = "342801633855673"
    @credit_check_1 = CreditCheck.new(cc_number_1)
    @credit_check_2 = CreditCheck.new(cc_number_2)
    @credit_check_3 = CreditCheck.new(cc_number_3)
    @credit_check_4 = CreditCheck.new(cc_number_4)
  end

  # def test_it_exists
  #   assert_instance_of CreditCheck, @credit_check_1
  # end

  def test_it_can_process_string
    assert_equal [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4], @credit_check_1.process_string
    assert_equal [0, 4, 2, 5, 9, 7, 3, 2, 9, 1, 0, 8, 1, 4, 5, 5], @credit_check_2.process_string
    assert_equal [3, 7, 6, 5, 5, 8, 3, 3, 6, 4, 0, 8, 2, 4, 3], @credit_check_3.process_string
    assert_equal [3, 7, 6, 5, 5, 8, 3, 3, 6, 1, 0, 8, 2, 4, 3], @credit_check_4.process_string
  end

  def test_it_can_double_ever_other
    assert_equal [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8], @credit_check_1.double_every_other
    assert_equal [0, 8, 2, 10, 9, 14, 3, 4, 9, 2, 0, 16, 1, 8, 5, 10], @credit_check_2.double_every_other
    assert_equal [3, 14, 6, 10, 5, 16, 3, 6, 6, 8, 0, 16, 2, 8, 3], @credit_check_3.double_every_other
    assert_equal [3, 14, 6, 10, 5, 16, 3, 6, 6, 2, 0, 16, 2, 8, 3], @credit_check_4.double_every_other
  end

  def test_it_can_add_double_digit_numbers
    assert_equal = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8], @credit_check_1.subtract_nine
    assert_equal = [0, 8, 2, 1, 9, 5, 3, 4, 9, 2, 0, 7, 1, 8, 5, 1], @credit_check_2.subtract_nine
    assert_equal = [3, 5, 6, 1, 5, 7, 3, 6, 6, 8, 0, 7, 2, 8, 3], @credit_check_3.subtract_nine
    assert_equal = [3, 5, 6, 1, 5, 7, 3, 6, 6, 2, 0, 7, 2, 8, 3], @credit_check_4.subtract_nine
  end

  def test_if_credit_card_is_a_module_of_10
    assert_equal = "The number is valid!", @credit_check_1.modulo_10
    assert_equal = "The number is invalid!", @credit_check_2.modulo_10
    assert_equal = "The number is valid!", @credit_check_3.modulo_10
    assert_equal = "The number is invalid!", @credit_check_4.modulo_10
  end
end
