class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

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
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def cancel?
    record.user == user || record.lesson.user == user
  end

  def accept?
    record.lesson.user == user
  end

  def reject?
    record.lesson.user == user
  end

  def end?
    record.lesson.user == user
  end
end
