class BestBuyController < ApplicationController
  def index
    best_buy_service = BestBuyService.new
    @stores = best_buy_service.retrieve_stores(params[:search])
  end

  def show
    best_buy_service = BestBuyService.new
    @store = best_buy_service.retrieve_store(params[:store_id])
  end
end
