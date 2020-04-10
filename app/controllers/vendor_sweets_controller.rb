class VendorSweetsController < ApplicationController
    def index
        @vendor_sweets = VendorSweet.all 
    end
    def new
        @vendor_sweet = VendorSweet.new
    end


    def create 
        vendor_sweet = VendorSweet.create(params)
        redirect_to vendor_path(vendor_sweet.vendor)
    end

    private
    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :instrument_id)
    end
end