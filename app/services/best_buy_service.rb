class BestBuyService

  def initialize
    @connection = Faraday.new(url: "https://api.bestbuy.com/v1/products")
  end

  

end
