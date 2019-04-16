class ActivitiesController < ApplicationController
  def index_museum
    @museums = Activity.where(category: "Museum")
  end

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
