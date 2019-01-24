require "pry"
class CashRegister
  
  attr_accessor :discount, :total, :items, :transactions
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @transactions = []
  end
  
  def add_item(title, price, quantity = 1)
    @total = total.to_f
    @title = title
    @price = price
    @quantity = quantity
    
    if quantity > 1
    @total += (price * quantity)
    else
    @total += price
    end
    
    @quantity.times do
      items << @title
    end
    
    @transactions << self
  end
  
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    @discount = @discount.to_f
    multiplier = 1 - (@discount/100)
    @total = @total * multiplier
    "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def void_last_transaction
    # last = @transactions[-1]
    # binding.pry
    # @total - last[@total]
    @transactions.pop
    @total = 0
  end
 
end

