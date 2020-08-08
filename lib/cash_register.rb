class CashRegister

  def initialize(discount = 0)
    @previousTotal = 0
    @total = 0
    @discount = discount
  end

  attr_accessor :total, :discount :items

  def add_item(itemName, price, quantity = 1)
    @previousTotal = @total
    thisPrice = price * quantity
    @total += thisPrice
    items << itemName
  end

end
