class Vendor < ApplicationRecord
    belongs_to :vendorsweet
    has_many :sweets, through: :vendorsweet
end
