class KebabShopsController < ApplicationController
  def index
    @kebab_shops = KebabShop.all

    @markers = @kebab_shops.map do |kebab|
      {
        lat: kebab.latitude,
        lng: kebab.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { kebab: kebab })
      }
    end
  end

  def show
    @kebab_shop = KebabShop.find(params[:id])
    @week_day = ["Monday", "Tuesday", "Wednesday", "Thuresday", "Saturday", "Sunday"]
    @review = Review.new
    @schedule = Schedule.new
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
    params.require(:kebab_shop).permit(:name, :address)
  end
end
