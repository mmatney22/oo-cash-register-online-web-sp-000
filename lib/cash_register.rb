class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction, :last_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      items << title
    end
    self.last_transaction = price * quantity
    self.total += price * quantity
  end

  def apply_discount
    self.total -= total * discount / 100.0
    if discount == 0
      "There is no discount to apply."
    else
        "After the discount, the total comes to $#{total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
