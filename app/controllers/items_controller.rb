class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :image, :explanation, :category_id, :status_id,
                                :payment_user_id, :prefecture_id, :days_to_deliver_id, :price).merge(user_id: current_user.id)
  end

end
