class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.all
      scope.all
    end
  end

  def show?
    true
  end

  def my_lessons?
    true
  end
end
