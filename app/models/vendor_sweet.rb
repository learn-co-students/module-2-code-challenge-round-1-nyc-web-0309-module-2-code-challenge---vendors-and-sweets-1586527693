class VendorSweet < ApplicationRecord
  belongs_to :vendor 
  belongs_to :sweet 

  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validate :duplicate

  def duplicate
    VendorSweet.all.each do |vendor_sweet|
      if vendor_sweet.include?(vendor_id) && vendor_sweet.include?(sweet.id)
        errors << "Vendor with that Sweet pairing already exists"
      end
    end
  end
end