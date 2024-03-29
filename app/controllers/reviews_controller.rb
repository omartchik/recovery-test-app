class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant= @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
# supprimer un commentaire
def destroy
  @review = Review.find(params[:id])
  @review.destroy
  redirect_to restaurant_path(@review.restaurant)
end

private
def review_params
  params.require(:review).permit(:content)

end


end
