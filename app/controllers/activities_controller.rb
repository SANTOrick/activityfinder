class ActivitiesController < ApplicationController
  def index_museum
    @museums = Activity.where(category: "Museum")
  end

  def index_restaurant
    @restaurants = Activity.where(category: "Restaurant")
  end

  def index_pub
    @pubs = Activity.where(category: "Pub")
  end

  def index_theater
    @theaters = Activity.where(category: "Teather")
  end

  def index
    @activities = Activity.all
  end

  def show
    @activity = find_me
    @new_booking_hash =
    {
      booking:
      {
        user_id: @current_user.id,
        activity_id: @activity.id
      }
    }
  end

  def find_me
    Activity.find(params[:id])
  end

  def random
    @activity = Activity.all.sample
    redirect_to activity_path(@activity)
  end

end
