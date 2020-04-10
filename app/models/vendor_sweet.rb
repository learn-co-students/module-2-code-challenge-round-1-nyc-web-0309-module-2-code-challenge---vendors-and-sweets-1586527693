class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    #validate price
    validates :price, presence: true
    validates :price, numericality: { greater_than: 0}

    #validate uniqueness
    validates :vendor_id, :sweet_id, uniqueness: true
end