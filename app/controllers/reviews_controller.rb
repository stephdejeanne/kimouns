class ReviewsController < ApplicationController
  before_action :find_booking, only: [:new, :create]
  before_action :find_review, only: [:edit, :update, :show, :destroy]
  def all
    @reviews = Review.all
  end
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    if @review.save
      redirect_to offer_path(@review.booking.offer)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to booking_path(@booking)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @review.destroy
    redirect_to booking_path(@booking)
  end

private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
