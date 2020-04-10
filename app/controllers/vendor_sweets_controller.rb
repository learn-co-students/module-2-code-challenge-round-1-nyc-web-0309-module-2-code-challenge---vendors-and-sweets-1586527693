class VendorSweetsController < ApplicationController

    def new
        @vendorsweet = VendorSweet.new
    end

    def create
        @vendorsweet = VendorSweet.create(vendor_sweet_params)

        redirect_to vendor_path(@vendorsweet.vendor_id)
    end


    private
    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
