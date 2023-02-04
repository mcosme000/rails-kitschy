class UsersController < ApplicationController

  def profile
    @user = current_user
    @lessons = policy_scope(Lesson).where(user: @user)
    @bookings = policy_scope(Booking).where(user: @user)
    @all_bookings = policy_scope(Booking).all
    @my_applications = @all_bookings.select { |booking| booking.lesson.user == @user }
    authorize @user
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      flash[:notice] = "Hey #{@user.first_name}, your account was successfully updated"
      redirect_to profile_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :email, :photo)
  end
end
