class CashRegister
    attr_accessor :discount, :total
    
    def initialize(discount=0.0)
        @discount = discount
        @total = total
        @total = 0
        @items = []
        @last_transaction = nil
    end

    def add_item(item, price, quantity=1)
        quantity.times do
        @total += price
        @items << item
        end
        @last_transaction = price*quantity
    end

    def items
        @items
    end

    def apply_discount
        if @discount > 0
        @total = @total - @total*@discount/100
        "After the discount, the total comes to $#{total}."
        else
        "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_transaction 
    end
end