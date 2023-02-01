class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  # def my_booking_applications?
  #   true
  # end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    return record.user == user
  end

  def cancel?
    return record.user == user
  end

  def accept?
    return record.lesson.user == user
  end

  def reject?
    return record.lesson.user == user
  end
end
