class MenuController < ApplicationController
  def index
    @sections = Section.all
    @food_items_filterd = params[:section] ? Section.where(name: params[:section]).first.food_items : FoodItem.all
  end
end
