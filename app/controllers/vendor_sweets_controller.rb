class VendorSweetsController < ApplicationController

    def new
        if flash[:errors] then
            @vs = VendorSweet.new(flash[:new_params])
        else
            @vs = VendorSweet.new
        end
    end

    def create
        @vs = VendorSweet.create(vs_params)

        if @vs.valid? then
            redirect_to vendor_path(@vs.vendor)
        else
            flash[:errors] = @vs.errors.full_messages
            flash[:new_params] = vs_params 
            redirect_to new_vendor_sweet_path
        end
    end

    private

    def vs_params
        # byebug
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end