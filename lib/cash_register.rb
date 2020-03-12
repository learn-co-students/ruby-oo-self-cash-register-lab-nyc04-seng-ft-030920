class CashRegister

    attr_accessor :total, :discount, :price, :items, :lasttrans

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        
    end

    def add_item(items, price, quantity = 1)
        @price = price
        @total += (price * quantity)
        if quantity > 1
            i = 0
            while i < quantity
            @items << items
            i += 1
            end
        else
            @items << items
        end
        self.lasttrans = price * quantity
    end

    def apply_discount
        if @discount > 0
            @discountamount = (price * discount) / 100
            @total -= @discountamount
            p "After the discount, the total comes to $800."
        else
            p "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @total -= @lasttrans
    end


end
