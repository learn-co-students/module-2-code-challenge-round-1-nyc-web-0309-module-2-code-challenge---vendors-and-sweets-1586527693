class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    validates :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    validate :has_unique_vendor_and_sweet_combo

    def has_unique_vendor_and_sweet_combo
        matching_sweet = self.vendor.sweets.find do |sw|
            sw == self.sweet
        end

        if matching_sweet then
            errors.add(:Join, ': This combination of Vendor and Sweet already exists')
        end

        nil
    end

    def self.average_price_in_dollars
        vs_list = VendorSweet.all

        if vs_list.count > 0 then
            vs_list.all.reduce(0) do |sum, vs|
                sum += vs.price
            end.to_f / vs_list.all.count / 100
        else
            0
        end
    end
end
