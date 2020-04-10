class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets
    
    # Advance # 9 part 2
    def vendor_avg_price
        my_sweet_prices = []
        
        VendorSweet.all.collect do |vs|
            if vs[:vendor_id] == self.id
            my_sweet_prices << vs.price
            end
        end


        count = my_sweet_prices.length
        total = 0
        my_sweet_prices.each { |e| total+=e }
        average = total / count
    end
    
end
