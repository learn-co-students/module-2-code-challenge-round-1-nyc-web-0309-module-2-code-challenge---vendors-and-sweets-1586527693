class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def average_sweet_price_in_dollars
        vs_list = self.vendor_sweets

        if vs_list.length > 0 then
            vs_list.reduce(0) do |sum, vs|
                sum += vs.price
            end.to_f / vs_list.count / 100
        else
            0
        end
    end
end
