class Api::V1::ItemsController < ApplicationController
  def all
    byebug
    render json: Item.all
  end
end
