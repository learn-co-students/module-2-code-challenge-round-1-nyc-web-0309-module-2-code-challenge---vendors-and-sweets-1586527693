class VendorsController < ApplicationController
  
  def index
    @vendors = Vendor.all
    # averaging method trying to access price through vendorsweet instance
    @vendors.each do |vendor|
    vendor.sweets.each do |sweet|
      price_array = []
      price_array << sweet.vendorsweet.price
      @vendor_average = price_array.sum / price_array.length
    end
  end
    #sweets total average method
    @sweets_average = Sweet.all.each do |sweet|
      total_price_array = []
      total_price_array << sweet.vendorsweet.price
      @sweets_average = total_price_array.sum / total_price_array.length
    end
  end
  def show
    @vendor = Vendor.find(params[:id])
  end
  private
    def vendorparams
        params.require(:vendor).permit(:name)
    end
  end
