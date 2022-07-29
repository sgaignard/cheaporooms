class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @rooms = Room.where("capacity < 4").first(3)
  end
end
