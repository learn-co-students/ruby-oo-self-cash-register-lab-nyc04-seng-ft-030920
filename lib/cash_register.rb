require 'pry'

class CashRegister 
    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @total += quantity * price
        quantity.times {
            items.push(title)
        }
        @last_transaction = price * quantity
    end 

    def apply_discount 
        @discount *= 0.01
        @total -= (@total * @discount)

        if @discount > 0
            "After the discount, the total comes to $#{@total.round}."
        else 
            "There is no discount to apply."
        end 
    end 

    def void_last_transaction
        @total -= @last_transaction
    end 


    # binding.pry
end 

cash = CashRegister.new(20) 
cash.add_item("book", 5.00, 3)
cash.add_item("egg", 2.50, 1)
cash.apply_discount