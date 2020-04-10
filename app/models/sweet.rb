class Sweet < ApplicationRecord
    has_many :vendor_sweets
    has_many :vendors, through: :vendor_sweets


    def avg_price
        total = 0
        count = 0
        self.vendor_sweets.each do |s|

            total += s.price 
            count +=1
        end
        average = total/count
    end
end
