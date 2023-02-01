class UsersController < ApplicationController
  def profile
    @user = current_user
    @lessons = policy_scope(Lesson).where(user: @user)
    @bookings = policy_scope(Booking).all
    authorize @user
  end
end
