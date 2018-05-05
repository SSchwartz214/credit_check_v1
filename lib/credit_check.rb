class CreditCheck
  #initialize with a cc number
  def initialize(cc_number)
    @cc_number = cc_number
  end

  # Perform math on Credit card
  def process_string(cc_number)
  #Convert number into an array of intergers
    reveresed_digits = cc_number.to_i.digits
  end

  # def reverse_and_split_number(digits)
  #   #Reverse the number
  #   cc_number_reversed = interger.digits
  # end

  def doulbe_every_other(digits)
    #Double every other number(every odd index)
  cc_number_reversed.map.with_index do |number, index|
    if index.odd?
      number *= 2
    end
      number
    end
  end

    def subract_nine(digits)
    # if number > 10, add digits together
      digits.map do |number|
        if number > 9
          number -= 9
        end
        number
      end
    end
    # sum of all numbers
    # Divide by 10

  # check the result against the accepted answer
  # Print whether the card is valid or not
end
cc_number = "4929735477250543"
