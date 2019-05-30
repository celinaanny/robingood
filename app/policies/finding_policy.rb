class FindingPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    true
  end

  def update?
    true
  end
end
