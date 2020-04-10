class VendorSweet < ApplicationRecord
    validates :price, presence: true
    validates :price, greater_than_or_equal_to: 0
    #validation checking that each pair only occurs once
    @pairing = #{VendorSweet.find(params[:vendor_id])}, #{VendorSweet.find(params[:sweet_id])}
    validates @pairing, uniqueness: true { message: 'This vendor and sweet have already been paired' }
    has_many :sweets
    has_many :vendors
end
