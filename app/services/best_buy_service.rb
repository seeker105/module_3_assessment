class BestBuyService

  def retrieve_stores(zip)
    conn = Faraday.new(url: "http://api.bestbuy.com/v1/stores%28%28area%28#{zip},25%29%29%29")
    response = conn.get do |r|
      r.params['apiKey'] = ENV['best_buy_api_key']
      r.params['show'] = 'longName,phone,storeType,distance'
      r.params['pageSize'] = '15'
      r.params['format'] = 'json'
    end
    result = JSON.parse(response.body, symbolize_names: true)[:stores]
  end

end
