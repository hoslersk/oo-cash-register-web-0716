require 'pry'

class CashRegister

  #@@item_arr = []
  #ITEM_ARR = []

  attr_accessor :total, :cash_register, :discount, :price, :title, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@item_arr = []
    #ITEM_ARR = []
  end

  def add_item(title, price, quantity = 1)
    counter = 0
    while quantity > counter
      @total = total + price
      counter += 1
      @last_item = price
      @@item_arr << title
      #ITEM_ARR << title
    end
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      @total = total - ((discount * 0.01) * total) #need to tweak this equation
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    return @@item_arr
    #return ITEM_ARR
  end

  def void_last_transaction
    @total = total - @last_item
    return @total
  end

end
