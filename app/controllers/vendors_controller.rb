class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    @average_price = VendorSweet.average_price
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

end
