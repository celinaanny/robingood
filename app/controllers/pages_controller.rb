class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :thankyou]

  def home
    @user = current_user
  end

  def thankyou
  end
end
