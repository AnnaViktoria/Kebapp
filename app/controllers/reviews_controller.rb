class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @kebab_shop = KebabShop.find(params[:kebab_shop_id])
    day_today = Date.today.strftime("%A").downcase!
    @week_day = @kebab_shop.schedules.find_by(weekday: day_today)


    @day_today = Date.today.strftime("%A").downcase!

    @review.kebab_shop = @kebab_shop
    if @review.save
      all_ratings = @kebab_shop.reviews.map(&:rating)
      @kebab_shop.rating = (all_ratings.sum / (all_ratings.size).to_f).round(1)
      @kebab_shop.save!
      redirect_to kebab_shops_path
    else
      flash.now[:alert]
      render "kebab_shops/show"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to kebab_shop_path
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      redirect_to @review
    else
      render 'edit'
    end
  end

  private

  def review_params
    params.require(:review).permit(:user, :rating)
  end
end
