
# I clearly need to review how to get the naming correct for models with
# CamelCase names...
# I guess I should have just used a generator for this one...

class VendorsweetsController < ApplicationController

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
            redirect_to new_vendorsweet_path
        end
    end

    private

    def vs_params
        # byebug
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end