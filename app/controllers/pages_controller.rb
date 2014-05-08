class PagesController < ApplicationController
  def landing
    if current_user && current_user.garden_id != 0
      redirect_to "/gardens/#{current_user.garden_id}"
    end
  end
end
