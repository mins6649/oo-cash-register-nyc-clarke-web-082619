

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

   def add_item(item, price, quantity = 1)
    self.total += price * quantity
    # self.items.push(item * quantity)
    quantity.times {|x| self.items.push(item)}
    self.last_transaction = price * quantity
   end

    def apply_discount()
    # float_discount = self.discount.to_f
        if self.discount > 0 
            self.total = (self.total * (1 - (self.discount.to_f/100))).to_i
            return "After the discount, the total comes to $#{self.total}."
        else 
            return "There is no discount to apply."
        end
    end 

    def void_last_transaction()
        self.total = self.total - self.last_transaction
    end

end
