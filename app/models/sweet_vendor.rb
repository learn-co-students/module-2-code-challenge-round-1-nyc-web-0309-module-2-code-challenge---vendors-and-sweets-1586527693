class SweetVendor < ApplicationRecord
belongs_to :sweet
belongs_to :vendor
validates :price, presence: true, numericality: {greater_than: 0}
validates :vendor_id, :uniqueness => {:scope => :sweet_id}
validates :sweet_id, :uniqueness => {:scope => :vendor_id}

end
