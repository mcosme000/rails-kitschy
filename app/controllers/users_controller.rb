class UsersController < ApplicationController
  def profile
    @user = current_user
    @lessons = policy_scope(Lesson).where(user: @user)
    @bookings = policy_scope(Booking).where(user: @user)
    @all_bookings = policy_scope(Booking).all
    @my_applications = @all_bookings.select { |booking| booking.lesson.user == @user }
    authorize @user
  end
end
