class ReviewsController < ApplicationController
  def create
    @review = @review = Review.new(review_params)
    @review.kebab_shop = KebabShop.find(params[:kebab_shop_id])
    @review.valid?
    # Associate review with dragon
    # Associate review with user
    # use current_user to access the currently logged user
    @review.save
    redirect_to kebab_shop_path(@review.kebab_shop)
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
    params.require(:review).permit(:rating, :content, :user)
  end
end
