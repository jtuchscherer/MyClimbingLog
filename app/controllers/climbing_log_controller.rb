class ClimbingLogController < ApplicationController
  def index
    if params[:gym_id] 
      @gym = Gym.find(params[:gym_id])
    end
    if params[:area_id] 
      @area = Area.find(params[:area_id])
    end
    if params[:route_id] 
      @route = Route.find(params[:route_id])
    end
  end
  
  def save
  end
end
