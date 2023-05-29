class MarketFacade
  def all_markets
    MarketService.new.markets[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def market(id)
    Market.new(MarketService.new.market(id)[:data])
  end

  def market_vendors(id)
    MarketService.new.market_vendors(id)[:data].map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end