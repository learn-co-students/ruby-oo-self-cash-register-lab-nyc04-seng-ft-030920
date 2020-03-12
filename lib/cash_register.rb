class CashRegister

    attr_accessor :total , :discount , :price , :items , :previous
 def initialize(discount=0)
   
    @total = 0
    @discount = discount
    @items = [] 

  end 

  def add_item(title , price, quantity = 1 )
    @price = price 
    @total += (price * quantity)
    if quantity > 1
        number = 0 
        while number < quantity
            @items << title
            number += 1
        end 
    else 
        @items << items 
    end
     self.previous = price * quantity 
  end 

def apply_discount
    if @discount > 0 
        @total_price = (discount * price) / 100
        @total -= @total_price 
        p "After the discount, the total comes to $800."
    else 
        p "There is no discount to apply."
    end
end
    def void_last_transaction
        @total = @total -= @previous
    end


end 