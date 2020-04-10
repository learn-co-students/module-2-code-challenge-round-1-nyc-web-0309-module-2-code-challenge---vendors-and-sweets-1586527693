class Sweet < ApplicationRecord
    belongs_to :vendorsweet
    has_many :vendors, through: :vendorsweet
end
