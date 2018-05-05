require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

class CreditCheckTest < Minitest::Test

  def setup
    cc_number = "4929735477250543"
    @credit_check = CreditCheck.new(cc_number)
  end

  def test_it_exists
    assert_instance_of CreditCheck, @credit_check
  end

  def test_it_can_process_string
    cc_number = "4929735477250543"
    assert_equal [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4], @credit_check.process_string(cc_number)
  end

  
end
