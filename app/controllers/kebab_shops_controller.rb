class KebabShopsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:set_user_location]
  def index
    @kebab_shops = KebabShop.all
    cookies[:anna] = 'anna'

    @markers = markers(@kebab_shops)
  end

  def show
    @kebab_shop    = KebabShop.find(params[:id])
    #regex to find the street, street number, postal code and city
    regex          = /([^\s[,]]+)/
    address_array  = @kebab_shop.address.scan(regex).flatten
    @street        = address_array[0]
    @street_number = address_array[1]
    @postal_code   = address_array[2]
    @city          = address_array[3]

    @week_day = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

    @review   = Review.new
    @schedule = Schedule.new
    @markers = markers([@kebab_shop])
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

  def set_user_location
    cookies[:user_lat] = params[:latitude]
    cookies[:user_lng] = params[:longitude]
    location = Geocoder.search([cookies[:user_lat], cookies[:user_lng]])
    cookies[:neighborhood] = location.first.data['address']['suburb']
    cookies[:city] = location.first.data['address']['city']
  end


  private

  def markers(array)
    array.map do |kebab|
      {
        lat: kebab.latitude,
        lng: kebab.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { kebab: kebab })
      }
    end
  end

  def review_params
    params.require(:kebab_shop).permit(:name, :address, :photo)
  end
end
