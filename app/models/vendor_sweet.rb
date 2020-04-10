class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  validates :name, presence:true
end
