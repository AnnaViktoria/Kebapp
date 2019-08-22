class KebabShopsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:set_user_location]
  def index
    if params[:filter] == :distance
      @kebab_shops = KebabShop.near(coords, 5)
    elsif params[:filter] == :price
      # Find active record query
    elsif params[:filter] == :rating
      @kebab_shops = KebabShop.order(rating: :desc)
      # Find active record query
    else
      @kebab_shops = KebabShop.all
    end
    cookies[:anna] = 'anna'

    @markers = markers(@kebab_shops)
  end

  def show
    @kebab_shop = KebabShop.find(params[:id])

    split_address
    average_rating

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

  def split_address
    regex          = /([^\s[,]]+)/
    address_array  = @kebab_shop.address.scan(regex).flatten
    street_address = false
    city_address   = false
    @street        = ""

    address_array.each do |word|
      if word =~ /\d/ && !street_address && !city_address
        @street_number = word
        street_address = true
      elsif word =~ /\d/ && street_address && !city_address
        @postal_code = word
        city_address = true
      elsif street_address && city_address
        @city = word
      else
        @street += word
        @street += " "
      end
    end
  end

  def average_rating
    counter = 0
    @kebab_shop.reviews.each do |review|
      counter += review.rating
    end
    @average_rating = counter.to_f / @kebab_shop.reviews.size
  end
end
