class ItemsController < ApplicationController
  def all
    byebug
    render json: Item.all
  end
end
