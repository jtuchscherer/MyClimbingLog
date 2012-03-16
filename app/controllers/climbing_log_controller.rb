class ClimbingLogController < ApplicationController
  skip_before_filter :authorize
  
  def select_gym
    
  end
  
  def select_area
    if params[:gym_id] 
      @gym = Gym.find(params[:gym_id])
    else
      redirect_to select_gym_path     
    end
  end
  
  def select_route
    if params[:area_id] 
      @area = Area.find(params[:area_id])
    else
      redirect_to select_gym_path
    end
  end
  
  def rate_route
    if params[:route_id] 
      @route = Route.find(params[:route_id])
    else
      redirect_to select_gym_path
    end
  end
  
  def save
  end
end
