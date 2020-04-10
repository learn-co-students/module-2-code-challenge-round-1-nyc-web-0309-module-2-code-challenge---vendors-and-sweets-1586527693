class Vendor < ApplicationRecord
    has_many :vendor_sweets, dependent: :destroy
    has_many :sweets, through: :vendor_sweets

    def avg_price_by_vendor
        sum = 0
        self.vendor_sweets.each do |vendor_sweet|
           sum += vendor_sweet.price
        end
        (sum.to_f / self.vendor_sweets.count.to_f).round(2)
    end
end
