class Vendor < ApplicationRecord
  has_many :vendor_sweets
  has_many :sweets, through: :vendor_sweets 


# the average price for all Sweets at the top of the page
# the average price for each Vendor next to the Vendor's name

  def self.average_price_of_sweets
    price = []
    self.all.each do |vendor|
      vendor.vendor_sweets.each do |v_s|
        price << v_s.price
      end
    end

    price.reduce(0.0) do |sum, price|
      sum + price
    end / price.length
  end

  def average_price
    self.vendor_sweets.reduce(0.0) do |sum, vendor_sweet|
      sum + vendor_sweet.price 
    end / self.vendor_sweets.length
  end


end