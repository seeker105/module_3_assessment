class BestBuyController < ApplicationController
  def search
    best_buy_service = BestBuyService.new
    @stores = best_buy_service.retrieve_stores(params[:search])
  end
end
