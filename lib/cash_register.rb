class CashRegister 

attr_accessor :total, :discount, :quantity, :items, :last_item

def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
end

def add_item(title,price,quantity=1)
    i = 1 
    self.total = self.total + price * quantity
    while i <= quantity
      self.items << title
      i += 1
    end 
    self.last_item = price * quantity
   
end

def apply_discount
 
    if @discount == 0 
    return "There is no discount to apply."
    else
    self.total = self.total - (self.total * (discount.to_f/100.0))
    return  "After the discount, the total comes to $#{self.total.to_i}."
    end 
end

def void_last_transaction
  
   
   if(self.items.length == 0)
        self.total = 0.0
        return self.total
    else 
        self.total -= self.last_item
        self.items.pop
        return self.total
    end

end

end 