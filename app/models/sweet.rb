class Sweet < ApplicationRecord
    has_many :vendorSweets
    has_many :vendors, through: :vendorSweets
end
