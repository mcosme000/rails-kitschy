class BookingsController < ApplicationController
  before_action :set_lesson, only: %i[new create edit update]

  def index
    @bookings = policy_scope(Booking).all
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.lesson = @lesson
    @booking.user = current_user
    authorize @booking
    if @booking.save
      flash[:notice] = "Booking created!"
      redirect_to bookings_path
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

  def cancel
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.canceled!
    redirect_to bookings_path
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :lesson_id, :start_date, :start_time, :participants)
  end
end
