class VendorsweetsController < ApplicationController
    
  def new 
    @vendorsweet = Vendorsweet.new 
    @vendors = Vendor.all 
    @sweets = Sweet.all
  end 

  def create
     @vendorsweet = Vendorsweet.create(vendorsweet_params)
     redirect_to vendor_path(@vendorsweet.vendor_id)
  end  



  private

  def vendorsweet_params
    params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
  end 

end
