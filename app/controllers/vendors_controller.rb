class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  end
  
  # def new
  #   @vendor = Vendor.new
  # end

  # def create
  #   @vendor = Vendor.create(vendor_params)

  #   if @vendor.valid? 
  #     redirect_to vendor_path
  #   else
  #     flash[:errors] = @vendor.errors.full_messages
  #     redirect_to new_vendor_path
  #   end

  # end

  # private

  # def vendor_params
  #   params.require(:vendor).permit(:name)
  # end

end
