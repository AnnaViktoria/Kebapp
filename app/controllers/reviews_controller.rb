class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.kebab_shop = KebabShop.find(params[:kebab_shop_id])
    if @review.save
      redirect_to kebab_shop_path(@review.kebab_shop)
    else
      @review.errors.full_messages
      debug
      render :new
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
    params.require(:review).permit(:user, :rating, :content)
  end
end
