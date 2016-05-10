class Store::ItemsController < ApplicationController
  def index
    @store = Store.find_by(slug: params[:store])
    @items = @store.items
  end

  def show
    @store = Store.find_by(slug: params[:store])
    @item = Item.find(params[:id])
    render file: "/public/404" if @item.nil?
  end
end
