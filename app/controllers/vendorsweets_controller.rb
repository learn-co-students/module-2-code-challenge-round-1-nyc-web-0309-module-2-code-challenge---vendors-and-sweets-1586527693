class VendorsweetsController < ApplicationController

    
    def new
    @vendorsweet = Vendorsweet.new 
    @sweets = Sweet.all
    @vendors = Vendor.all 
    end
   
    def create
    @vendor_sweet = Vendorsweet.create(vendorsweet_params)
    redirect_to vendor_path(@vendor_sweet.vendor_id)
    end
   
    
   
   
   
   
   private 
   
    def vendorsweet_params
    params.require(:vendorsweet).permit(:sweet_id, :vendor_id, :price)
    end

end 