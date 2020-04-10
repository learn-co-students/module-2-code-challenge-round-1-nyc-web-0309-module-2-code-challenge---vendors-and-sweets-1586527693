class Vendor < ApplicationRecord
    has_many :vendor_sweets, dependent: :destroy
    has_many :sweets, through: :vendor_sweets

    # def average_sweet
    #     sum = 0
    #     vendor_sweets.each do |sweets|
    #         sum += sweets.price
    #     end
    #     sum / sweets.size
    # end
end
