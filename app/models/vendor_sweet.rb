class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  validates :price, presence:true
  validates :price, numericality: {greater_than: 0}
  validates :vendor_id, uniqueness: {scope: :sweet_id, message: "there can only be one instance of each vendor and sweet pair"}
end
