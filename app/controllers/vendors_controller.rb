class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all

    @vendorsweets = VendorSweet.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

end
