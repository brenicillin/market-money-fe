class MarketFacade
  def all_markets
    MarketService.new.markets[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def market(id)
    market_data = Market.new(MarketService.new.market(id)[:data])
  end
end