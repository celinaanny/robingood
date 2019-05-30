class CodePolicy < ApplicationPolicy
  def show?
    true
  end

  def sendcodes?
    true
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end
