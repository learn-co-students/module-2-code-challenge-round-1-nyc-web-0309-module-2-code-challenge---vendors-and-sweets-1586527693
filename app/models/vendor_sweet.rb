class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet
    validates :price, presence: true, numericality: {greater_than: 0}
    # validates :sweet_id, uniqueness: true # not working correctly
    validates_uniqueness_of :sweet_id, :scope => [:vendor_id]

end
