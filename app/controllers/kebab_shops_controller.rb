class KebabShopsController < ApplicationController
  def index
    @kebab_shops = KebabShop.all
  end

  def show
    @kebab_shop = KebabShop.new
    @review = Review.new
  end

  def new
    @kebab_shop = KebabShop.new
  end

  def create
    @kebab_shop = KebabShop.new(kebab_shop_params)
    if @kebab_shop.save
      redirect_to kebab_shops_path(@kebab_shop)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @kebab_shop.update(kebab_shop_params)
    redirect_to kebab_shops_path(@kebab_shop)
  end

  def destroy
    @kebab_shop.destroy
  end

  def review_params
    params.require(:kebab_shop).permit(:name, :address, :price, :start_time, :closing_time)
  end
end
