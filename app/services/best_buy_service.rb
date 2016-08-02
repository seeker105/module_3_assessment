class BestBuyService

  def initialize
    @connection = Faraday.new(url: "https://api.bestbuy.com/v1/products")
  end

  def retrieve_stores(zip)
    conn = Faraday.new(url: "http://api.bestbuy.com/v1/stores")
    https://api.bestbuy.com/v1/stores((area(80203,25)))?apiKey=&show=longName,phone,storeType&pageSize=15&callback=JSON_CALLBACK&format=json


    @connection.get do |r|
      r.url "%28%28area%2880203,25%29%29%29"
      r.params['apiKey'] = ENV['best_bu']
    end
  end

end
