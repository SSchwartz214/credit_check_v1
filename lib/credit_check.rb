class CreditCheck

  def initialize(cc_number)
    @cc_number = cc_number
  end

  def process_string
     @cc_number.to_i.digits
  end

  def double_every_other
    process_string.map.with_index do |number, index|
      index.odd? ? number * 2 : number
    end
  end

  def subtract_nine
    double_every_other.map do |number|
      number > 9 ? number -= 9 : number
    end
  end

  def check_validity
    if subtract_nine.sum % 10 == 0
      p "The number is valid!"
    else
      p "The number is invalid!"
    end
  end
end
