class Sweet < ApplicationRecord
    has_many :vendor_sweets
    has_many :vendors, through: :vendor_sweets

    # validates :vendor_sweets, uniqueness: true
end
