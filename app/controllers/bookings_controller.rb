class BookingsController < ApplicationController
  before_action :set_lesson, only: %i[new create edit update]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.lesson = @lesson
    if @booking.save
      redirect_to lesson_path(@lesson)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to lesson_path(@booking.lesson), status: :see_other
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :lesson_id, :status, :start_date_time)
  end
end
