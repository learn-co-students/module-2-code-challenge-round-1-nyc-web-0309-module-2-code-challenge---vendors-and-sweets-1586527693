class Vendor < ApplicationRecord
  has_many :vendor_sweets
  has_many :sweets, through: :vendor_sweets

  def vendor_avg
    arr = self.vendor_sweets.map do |vs|
      vs.price
    end.inject { |sum, el| sum + el } / arr.length
  end
end


