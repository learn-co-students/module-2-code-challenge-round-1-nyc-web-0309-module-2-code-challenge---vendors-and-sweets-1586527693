class Sweet < ApplicationRecord
    has_many :vendor_sweets
    has_many :vendors, through: :vendor_sweets
    
    
    # the average price for all Sweets at the top of the page
    def avg_price
        #first get total price
        total = 0
        Sweet.all.price.each do |p|
            total += p
        end
        avg = total/Sweet.all.size
    end
end
