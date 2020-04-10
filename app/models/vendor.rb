class Vendor < ApplicationRecord
    has_many :vendorSweets
    has_many :sweets, through: :vendorSweets
end
