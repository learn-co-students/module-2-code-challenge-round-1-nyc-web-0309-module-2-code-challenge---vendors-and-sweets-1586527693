class VendorSweetsController < ApplicationController
  def new
    @vs = VendorSweet.new 
  end
  def create
    vs = VendorSweet.new(params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price))
    # byebug
    if !vs.save
      flash[:errors] = vs.errors.full_messages
      redirect_to new_vendor_sweet_path
    else
      redirect_to vendor_path(vs.vendor)
    end
  end
end