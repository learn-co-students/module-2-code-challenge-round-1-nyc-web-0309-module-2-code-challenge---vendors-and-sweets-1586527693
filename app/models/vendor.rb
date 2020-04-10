class Vendor < ApplicationRecord
  has_many :vendor_sweets
  has_many :sweets, through: :vendor_sweets

  def average_price
    if self.vendor_sweets.count < 1
      return 0
    end
    (self.vendor_sweets.sum {|vs| vs.price } / self.vendor_sweets.count).to_i
  end
end
