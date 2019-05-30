class FindingPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    record.item.user == user
  end

  def update?
    record.item.user == user
  end
end
