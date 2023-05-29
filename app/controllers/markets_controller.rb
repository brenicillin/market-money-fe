class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.new.all_markets
  end

  def show
    @facade = MarketFacade.new.market(params[:id])
    @vendors = MarketFacade.new.market_vendors(params[:id])
  end
end