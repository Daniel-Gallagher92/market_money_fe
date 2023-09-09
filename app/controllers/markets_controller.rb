class MarketsController < ApplicationController 
  def index 
    @markets = MarketFacade.get_markets
  end

  def show 
    @market = MarketFacade.get_market(params[:id])
    @vendors = MarketFacade.get_vendors(params[:id])
  end
end