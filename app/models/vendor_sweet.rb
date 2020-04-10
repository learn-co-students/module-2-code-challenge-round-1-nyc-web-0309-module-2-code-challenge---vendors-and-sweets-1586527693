class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    validates :price, presence: true
    validate :has_unique_vendor_and_sweet_combo

    def has_unique_vendor_and_sweet_combo
        matching_sweet = self.vendor.sweets.find do |sw|
            sw == self.sweet
        end

        if matching_sweet then
            errors.add(:sweet, 'This combination of Vendor and Sweet already exists')
        end

        nil
    end
end
