class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    # validates :vendor_sweets, uniqueness: true
end
