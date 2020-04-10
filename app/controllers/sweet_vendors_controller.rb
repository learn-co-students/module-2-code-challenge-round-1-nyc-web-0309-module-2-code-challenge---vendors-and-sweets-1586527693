class SweetVendorsController < ApplicationController
    def index
      @sweet_vendors = SweetVendor.all
    end

    def new
        @sweet_vendor= SweetVendor.new
    end
    

    def create
        @sweet_vendor= SweetVendor.new(sweet_vendor_params)
        
        if @sweet_vendor.valid?
        @sweet_vendor.save
        redirect_to vendor_path(@sweet_vendor.vendor_id)
        else 
            flash[:error]= @sweet_vendor.errors.full_messages
            
            redirect_to new_sweet_vendor_path
        end
    end

    private
    def sweet_vendor_params
        params.require(:sweet_vendor).permit(:vendor_id, :sweet_id, :price)
    end
  end
  