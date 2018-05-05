class CreditCheck

  #initialize with a cc number
  def initialize(cc_number)
    @cc_number = cc_number
  end

  # Perform math on Credit card
  def process_string
  #Convert number into an array of intergers
     @cc_number.to_i.digits
  end

  def double_every_other
    #Double every other number(every odd index)
  process_string.map.with_index do |number, index|
    if index.odd?
      number *= 2
    end
      number
    end
  end

  def subtract_nine
  # if number > 10, add digits together
    double_every_other.map do |number|
      if number > 9
        number -= 9
      end
        number
    end
  end

  def modulo_10
    # sum of all numbers
    # Divide by 10
  # check the result against the accepted answer
  # Print whether the card is valid or not
    if subtract_nine.sum % 10 == 0
      p "The number is valid!"
    else
      p "The number is invalid"
    end
  end
end
