class ReviewsController < ApplicationController
	def create
    @review = Review.new(review_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail
    @reviews = @cocktail.reviews
    if @review.save
      redirect_to @review.cocktail
    else
      render "cocktail/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
