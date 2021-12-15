class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = 0
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        @last_transaction = price.to_f * quantity
       @total += @last_transaction
       quantity.times do |i|
        @items << title
       end
    end

    def apply_discount
        if @discount != 0
            @total = (@total - (@total * @discount/100)).to_i
            "After the discount, the total comes to $#{@total}."
        elsif @discount == 0
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @total - @last_transaction
    end
end