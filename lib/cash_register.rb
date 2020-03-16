class CashRegister

        attr_accessor :items, :total, :discount, :final


    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, new_total= 1)
        self.total += price * new_total
        new_total.times do
            items << title
        end
        self.final = price * new_total
    end

    def apply_discount
        if discount != 0
          self.total = (total * ((100.0 - discount.to_f)/100)).to_i
          "After the discount, the total comes to $#{self.total}."
        else
          "There is no discount to apply."
        end
      end

      def void_last_transaction
        self.total = self.total - self.final
      end

end
