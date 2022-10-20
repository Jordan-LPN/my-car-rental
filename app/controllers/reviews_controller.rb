class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    @car = Car.find(params[:car_id])
end

def new
    @car = Car.find(params[:car_id])
    @review = Review.new
end

def create
    @car = Car.find(params[:car_id])
    @user = current_user
    @review = Review.new(params_review)
    @review.car = @car
    @review.user = @user
    @review.save!
    redirect_to car_path(@car)
    flash[:alert] = "Review Added."
end

private

def params_review
    params.require(:review).permit(:feedback)
end

end
