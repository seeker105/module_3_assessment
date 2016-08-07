class BestBuyService

  def retrieve_stores(zip)
    conn = Faraday.new(url: "http://api.bestbuy.com/v1/stores%28%28area%28#{zip},25%29%29%29")
    response = conn.get do |r|
      r.params['apiKey'] = ENV['best_buy_api_key']
      r.params['show'] = 'longName,phone,storeType,distance,storeId'
      r.params['pageSize'] = '15'
      r.params['format'] = 'json'
    end
    result = JSON.parse(response.body, symbolize_names: true)[:stores]
  end

  def retrieve_store(id)
    # https://api.bestbuy.com/v1/stores((storeId=281))=&pageSize=15&callback=JSON_CALLBACK&format=json
    conn = Faraday.new(url: "http://api.bestbuy.com/v1/stores%28%28storeId=#{id}%29%29")
    response = conn.get do |r|
      r.params['apiKey'] = ENV['best_buy_api_key']
      r.params['show'] = 'longName,phone,storeType,address,city,region,fullPostalCode,hours'
      r.params['format'] = 'json'
    end
    result = JSON.parse(response.body, symbolize_names: true)[:stores][0]
    result[:split] = result[:hours].split("\; ")
    result[:split_hours]=result[:hours].gsub("\;", ",").split(", ")
    byebug
    return result
  end

end
