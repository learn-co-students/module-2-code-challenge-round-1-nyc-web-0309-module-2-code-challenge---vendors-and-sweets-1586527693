class VendorSweetsController < ApplicationController
    def new
        @vendorsweet = VendorSweet.new
    end
    def create
        @vendorsweet = VendorSweet.create(vendorsweetparams)
        if @vendorsweet.valid?
            redirect_to vendor_path(@vendor)
        else
            flash[:errors] = @vendorsweet.errors.full_messages
            redirect_to new_vendorsweet_path
        end
        
    end
    
    private
    def vendorsweetparams
        params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
    end
end
