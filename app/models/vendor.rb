class Vendor < ApplicationRecord
  has_many :vendor_sweets
  has_many :sweets, through: :vendor_sweets

  

  def avg_price
    price_arr = self.vendor_sweets.map do |vs|
      vs.price
    end
    price_arr.sum / price_arr.length
  end

  # def self.avg_price_all
  #   total_arr = self.all.map do |vs|
  #     vs.price
  #   end
  #     total_arr.sum / total_arr.length
  # end



  # def self.avg_price_all
  #   vendor_price self.all.each do |vendor|
  #     vendor.avg_price
  #   end
  #   vendor_price.sum * self.all.count
  # end

  # def self.avg_price_all
  #   vendor_price self.all.each do |vendor|
  #     vendor = price_arr = self.vendor_sweets.map do |vs|
  #         vs.price
  #       end
  #       price_arr.sum / price_arr.length
  #   end
  #   vendor_price.sum * self.all.count
  # end
end


