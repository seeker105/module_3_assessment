class ItemsController < ApplicationController
  def index
    byebug
    render json: Item.all
  end
end
