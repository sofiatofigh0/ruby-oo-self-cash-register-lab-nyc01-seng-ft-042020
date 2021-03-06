class CashRegister

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items=[]
        @last_item=last_item
      end

    attr_accessor :total
    attr_accessor :discount
    attr_accessor :items
    attr_accessor :last_item
    

    def add_item(item_name,price,quantity=1)
        @item_name=item_name
        @price=price
        @quantity=quantity
        if quantity == 0 || quantity == nil
            self.total = total + price
        else
            self.total = total + (price * quantity) 
        end
        i = quantity
            until i == 0 do
            @items << item_name
             i -= 1
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

         
    def void_last_transaction
        @total -= @price
          
    end

end
