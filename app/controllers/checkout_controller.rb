class CheckoutController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @item = params[:item] ? FoodItem.find(params[:item]) : nil
    @total = @item.price.to_f + 10
  end

  def done
    @item = params[:item] ? FoodItem.find(params[:item]) : nil
    @total = @item.price.to_f + 10

    @name = params[:name]
    @phone_number = params[:phone]
    @address = params[:address]
  end
end
