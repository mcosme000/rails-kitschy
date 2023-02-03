class ReviewsController < ApplicationController
  before_action :set_lesson, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.lesson = @lesson
    if @review.save
      redirect_to lesson_path(@lesson)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to lesson_path(@review.lesson), status: :see_other
  end

  private

  def set_lesson
    @lesson = lesson.find(params[:lesson_id])
  end

  def review_params
    params.require(:review).permit(:lesson_id, :content, :rating)
  end
end
