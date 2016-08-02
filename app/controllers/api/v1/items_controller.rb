class Api::V1::ItemsController < ApplicationController
  def all
    # render json: Item.all
    Item.all
  end
end
