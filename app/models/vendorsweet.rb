class Vendorsweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    validates :price, presence: true 
end
