class CodesController < ApplicationController
  def index
    @codes = policy_scope(Code)
  end
end
