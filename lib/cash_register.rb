class CashRegister

  def initialize(discount = 0)
    @previousTotal = 0
    @total = 0
    @discount = discount
    @items = []
  end

  attr_accessor :total, :discount

  def add_item(itemName, price, quantity = 1)
    @previousTotal = @total
    thisPrice = price * quantity
    @total += thisPrice
    @items << itemName
  end

  def apply_discount
    discountDecimal = (@discount.to_f) * 0.01
    multiByThis = 1.0 - discountDecimal
    @price = @price.to_f * multiByThis
  end

end
