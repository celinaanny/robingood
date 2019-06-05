class OrderPolicy < ApplicationPolicy
  def create?
    user
  end

  def update?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
