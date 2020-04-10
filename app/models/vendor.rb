class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets
    

    def avg_price
        total_price = 0
        count = 0
        self.vendor_sweets.each do |vs|
            total_price += vs.price 
            count += 1
        end
        total_price / count
    end

    def self.total_avg
        price = 0
        Vendor.all.each do |v|
            price += v.avg_price
        end
        price / Vendor.all.count 
    end

end
