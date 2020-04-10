class VendorsweetsController < ApplicationController

    def index

    end 

    def new
      @vendorsweets = Vendorsweet.new
    end

    def create
        vendorsweet = Vendorsweet.new(sweet_params)

        if vendorsweet.save
            redirect_to vendor_path(vendorsweet)
        else 
            flash[:error] = vendorsweet.errors.full_messages
            redirect_to new_vendorsweet_path(vendorsweet)
        end
    end 
  
    private 

    def sweet_params
        params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
    end 


  end
  