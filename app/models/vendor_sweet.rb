class VendorSweet < ApplicationRecord
  belongs_to :vendor 
  belongs_to :sweet

  # NOTE that this eliminates the need to check for existence of :price
  # If price DNE, it will fail this validation
  validates :price, numericality: {greater_than_or_equal_to: 0}
end
