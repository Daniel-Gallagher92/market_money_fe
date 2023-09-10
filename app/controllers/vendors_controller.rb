class VendorsController < ApplicationController 
  def show 
    @vendor = MarketFacade.get_vendor(params[:id])
  end
end