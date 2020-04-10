class Sweet < ApplicationRecord
    has_many :vendorsweets
    has_many :vendor, through: :vendorsweets
end
