class Sweet < ApplicationRecord
    has_many :vendor_sweets, dependent: :destroy
    has_many :vendors, through: :vendor_sweets


    def avg_price_by_each_sweet
        sum = 0
        self.vendor_sweets.each do |vendor_sweet|
           sum += vendor_sweet.price
        end
        (sum.to_f / self.vendor_sweets.count.to_f).round(2)
    end

    # def self.avg_price_all
    #     total = 0
    #     self.all.each do |sweet|
    #         total += sweet.avg_price_by_each_sweet
    #     end
    #     (total.to_f / self.all.count.to_f).round(2)
    # end
end
