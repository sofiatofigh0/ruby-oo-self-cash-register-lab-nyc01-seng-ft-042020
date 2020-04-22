class CashRegister

    def initialize(discount = 0)
        @total = 0
        @discount = discount
      end

    attr_accessor :total
    attr_accessor :discount

    def add_item(item_name,price,quantity=0)
        @item_name=item_name
        @price=price
        @quantity=quantity
        if quantity == 0 || quantity == nil
            self.total = total + price
        else
            self.total = total + (price * quantity)
        end
    end

    def apply_discount
        if discount == 0
            return "There is no discount to apply."
        elsif discount > 0
            new = (discount*@price)/100
            self.total = total - new
            return "After the discount, the total comes to $#{total}."
        end
    end

    def items
        @items
    end

    def items
        @items=[]
        @items << @item_name
    end


    def void_last_transaction
    end

end
