class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def my_bookings?
    true
  end

  def bookings_requests?
    true
  end

  def update?
    user == record.user
  end

  def destroy?
    user == record.user
  end
end
