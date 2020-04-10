class VendorSweetsController < ApplicationController

    def show
        @vendor_sweet = VendorSweet.find(params[:id])
    end
    def new
        @vendor_sweet = VendorSweet.new
    end

    def create
        @vendor_sweet = VendorSweet.new(vendor_sweet_params)
        @vendor_sweet.save

        flash[:messages] = @vendor_sweet.errors.full_messages
        if @vendor_sweet.valid?
            redirect_to vendor_path(@vendor_sweet.vendor)
        else
            redirect_to new_vendor_sweet_path
        end
    end

    private 

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:sweet_id, :vendor_id, :price)
    end
end
