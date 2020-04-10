class Vendor < ApplicationRecord
has_many :sweet_vendors
has_many :sweets, through: :sweet_vendors
end
