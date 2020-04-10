class Sweet < ApplicationRecord
  has_many :vendor_sweets
  has_many :vendors, through: :vendor_sweets

  def avg_price 
    price_arr = self.vendor_sweets.map do |vs|
      vs.price
    end
    price_arr.sum / price_arr.length
  end
end
