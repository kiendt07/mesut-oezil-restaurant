class MenuController < ApplicationController
  def index
    @params = params
    @filters = ['Alphabetical', 'Price low to high', 'Price high to low']
    @sections = Section.all

    @food_items_filterd = FoodItem.all
    section_id_filtered = params[:section] ? Section.where(name: params[:section]).first.id : nil
    @food_items_filterd = params[:section] ? @food_items_filterd.where(section_id: section_id_filtered): @food_items_filterd
    @food_items_filterd = params[:filter] ?
      case params[:filter]
      when 'Alphabetical'
        @food_items_filterd.order(:name)
      when 'Price low to high'
        @food_items_filterd.order(price: :asc)
      when 'Price high to low'
        @food_items_filterd.order(price: :desc)
      else
        @food_items_filterd.all
      end
    : @food_items_filterd
  end
end
