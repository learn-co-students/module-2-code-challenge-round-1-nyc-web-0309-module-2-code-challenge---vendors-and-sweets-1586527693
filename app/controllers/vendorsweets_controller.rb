class VendorsweetsController < ApplicationController

    def new
        @vs = VendorSweet.new
    end

    def create
        @vs = VendorSweet.create(vs_params)

        if @vs.valid? then
            redirect_to vendor_path(@vs.vendor)
        else
            flash[:errors] = @vs.errors.full_messages
            render :new
        end
    end

    private

    def vs_params
        params.require(:vendorSweet).permit(:vendor_id, :sweet_id, :price)
    end
end