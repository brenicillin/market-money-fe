class VendorsController < ApplicationController
  def show
    @facade = VendorFacade.new.vendor(params[:id])
  end
end