class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :thankyou]

  def home
    @user = current_user
    @hidden_navbar = true
  end

  def thankyou
    @hidden_navbar = true
  end
end
