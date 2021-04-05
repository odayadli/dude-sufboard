class SurfboardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def new?
  #   true
  # end

  def create?
    true
  end

  def show?
    true
  end
  def my_surfboards?
    true
  end

  def update?
    user == record.user
  end

  def destroy?
    user == record.user
  end

  def import_surfboards?
    true
  end
end
