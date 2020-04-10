class Sweet < ApplicationRecord
has_many :vendor_sweets
has_many :vendors, through: :vendor_sweets 

def self.all_sweet_aver
    all_sweets = self.all.map{|sweet|sweet.vendor_sweets}
    all_prices = all_sweets[0].map{|sweet|sweet.price}
    all_prices.inject{ |sum, el| sum + el }.to_f / all_prices.size

end 
end
