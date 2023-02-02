class BookingsController < ApplicationController
  before_action :set_lesson, only: %i[new create edit update]

  def index
    @bookings = policy_scope(Booking).all
  end

  # def my_booking_applications
  # end

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
      redirect_to profile_path
    else
      render 'lessons/show', status: :unprocessable_entity
    end
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  #   authorize @booking
  # end

  # def update
  #   @booking = Booking.find(params[:id])
  #   authorize @booking

  #   if @booking.update(booking_params)
  #     redirect_to booking_path(@booking)
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to profile_path, status: :see_other
  end

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.accepted!
    redirect_to profile_path
  end

  def reject
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.rejected!
    redirect_to profile_path
  end

  def cancel
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.canceled!
    redirect_to profile_path
  end

  def end
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.ended!
    redirect_to profile_path
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :lesson_id, :start_date, :start_time, :participants)
  end
end
