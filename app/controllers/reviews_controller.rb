class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    if @review.save
      redirect_to booking_path(@review.booking)
    else
      render 'bookings/show', status: :unprocessable_entity
    end
  end

  def show
    @review = Review.find(params[:id])
  end

private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
