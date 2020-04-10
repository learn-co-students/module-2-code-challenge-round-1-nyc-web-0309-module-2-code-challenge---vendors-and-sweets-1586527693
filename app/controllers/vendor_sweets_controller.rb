class VendorSweetsController < ApplicationController

    def new
        @vendorsweet = VendorSweet.new
    end

    def create
        @vendorsweet = VendorSweet.create(vendor_sweet_params)

        flash[:messages] = @vendorsweet.errors.full_messages
        if @vendorsweet.valid?
            redirect_to vendor_path(@vendorsweet.vendor_id)
        else
            redirect_to new_vendor_sweet_path
        end

    end


    private
    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
