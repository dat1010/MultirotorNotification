class PagesController < ApplicationController
  def Home
    @users = User.count
  end
end
