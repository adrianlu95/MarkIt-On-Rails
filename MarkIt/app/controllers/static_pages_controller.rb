class StaticPagesController < ApplicationController
  def home
    @listing = current_user.listings.build if logged_in?
  end
end
