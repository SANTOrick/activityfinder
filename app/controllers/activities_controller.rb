class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def show
    @activity = find_me

  end

  def find_me
    Activity.find(params[:id])
  end

end
