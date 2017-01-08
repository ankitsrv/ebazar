class ReviewsController < ApplicationController
  def show
  end

  def new
  end

  def create
    if current_user.type == "Customer"
      @review = Review.new(review_params)
      @review.customer = current_user
      @review.save!
    end
    redirect_to restaurents_path
  end

  def index
  end

  private

  def review_params
    params.require(:review).permit(:content, :restaurent_id)
  end
end
