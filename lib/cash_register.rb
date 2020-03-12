require_relative "../lib/transaction.rb"

class CashRegister
    attr_reader :discount, :cart
    attr_accessor :total

    def initialize(discount = nil)
        @total = 0.0
        @discount = discount
        @cart = []
    end

    def add_item(title, price, quantity = 1)
        title = Transaction.new(title, price, quantity)
        @cart << title
        @total += price * quantity
    end

    def apply_discount
        if @discount 
            @total *=  (1 - @discount / 100.0)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        item_array = @cart.map do |tran|
            Array.new(tran.quantity) {tran.title}
        end
        item_array.flatten
    end

    def void_last_transaction
        void = @cart.pop
        @total -= void.quantity * void.price
    end

end
