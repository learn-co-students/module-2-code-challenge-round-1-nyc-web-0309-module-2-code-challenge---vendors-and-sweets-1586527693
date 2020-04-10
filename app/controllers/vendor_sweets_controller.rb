class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all
    end

    def create
        @vendor_sweet = VendorSweet.create
    end

end
