class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor

  validates :price, presence: true
  validates :price, numericality: {greater_than: 0, message: "price cannot be 0 or negative"}
  # validates :vendor_sweet_id, uniqueness: {scope: :vendor_id}

  def self.avg_price_all
    total_arr = self.all.map do |vs|
      vs.price
    end
      total_arr.sum / total_arr.length
  end
end
