class CashRegister
    attr_accessor :total, :discount, :items
    
    def initialize(discount = 0)``
        @total = 0
        @discount = discount
        @items = []

    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
       @total = (price.to_f * quantity) + @total
       @itmes << title
    end

    def apply_discount
        if @discount != 0
            puts @total
            print @total - (@total * @discount/100)
            @total = (@total - (@total * @discount/100)).to_i
            "After the discount, the total comes to $#{@total}."
        elsif @discount == 0
            "There is no discount to apply."
        end
    end

    def items
        @itmes
    end
end