class Vendor < ApplicationRecord
    has_many :vendorSweets
    has_many :sweets, through: :vendorSweets

    def average_sweet_price_in_dollars
        vs_list = self.vendorSweets

        if vs_list.length > 0 then
            self.vendorSweets.reduce(0) do |sum, vs|
                sum += vs.price
            end.to_f / self.vendorSweets.count / 100
        else
            0
        end
    end
end
