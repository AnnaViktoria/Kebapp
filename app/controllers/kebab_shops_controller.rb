class KebabShopsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:set_user_location]

  def index
    @kebab_shops = KebabShop.all
    @markers = markers(@kebab_shops)
    @day_today = Date.today.strftime("%A").downcase!

    @kebab_search = KebabShop.search_by_name(params[:name])
  end

  def show
    @kebab_shop = KebabShop.find(params[:id])
    split_address

    @review   = Review.new
    @schedule = Schedule.new
    @menu     = Menu.new

    day_today = Date.today.strftime("%A").downcase!
    @week_day = @kebab_shop.schedules.find_by(weekday: day_today)
    @markers  = markers([@kebab_shop])
    @kebab_shop.save!
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

  def filter
    @day_today = Date.today.strftime("%A").downcase!
    if params[:filter] == 'distance'
    #  @kebab_shops = KebabShop.near([55.6991, 12.5542], 5)
      #@kebab_shops = KebabShop.order('Geocoder::Calculations.distance_between([latitude, longitude], [55.6915195, 12.5574414])')
      @kebab_shops = KebabShop.near([55.6915195, 12.5574414], 50, :order => :distance)
    elsif params[:filter] == 'rating'
      @kebab_shops = KebabShop.order(rating: :desc)
    elsif params[:filter] == 'price'
      @kebab_shops = KebabShop.order(price: :asc)
    else
      @kebab_shops = KebabShop.all
    end
    @filter = params[:filter]
  end

  def featured
    @near_kebab = KebabShop.new
    @cheapest_kebab = KebabShop.order("price ASC").first
    @review_kebab = KebabShop.order("rating DESC").first

    distance_old = (Geocoder::Calculations.distance_between([KebabShop.first.latitude, KebabShop.first.longitude], [55.6915195, 12.5574414]) * 1609.34).round(0)

    KebabShop.all.each do |shop|
      distance = (Geocoder::Calculations.distance_between([shop.latitude, shop.longitude], [55.6915195, 12.5574414]) * 1609.34).round(0)
      if distance < distance_old
        @near_kebab = shop
        distance_old = distance
      end
    end
    @near_kebab = KebabShop.search_by_name(@near_kebab.name)
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
    params.require(:kebab_shop).permit(:name)
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
end
