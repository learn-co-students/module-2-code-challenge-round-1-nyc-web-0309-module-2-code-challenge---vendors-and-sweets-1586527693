class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets


    def avarage_price_sweet
        total = 0 
     self.vendor_sweets.each do |vendor_sweet|
         total += vendor_sweet.price 
    end 
      total 
    end 
end
