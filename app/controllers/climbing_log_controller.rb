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
      if session[:user_id]
        @user_feedback = UserFeedback.where(:user_id => session[:user_id]).where(:route_id => params[:route_id]).first 
      end
    else
      redirect_to select_gym_path
    end
  end
  
  def save
    user_feedback = UserFeedback.where(:user_id => session[:user_id]).where(:route_id => params[:route_id]).first || UserFeedback.new
    user_feedback.rating = Rating.find(params[:rating_id])
    user_feedback.route = Route.find(params[:route_id])
    if session[:user_id]
      user_feedback.user = User.find(session[:user_id])
    end
    user_feedback.score = params[:score]
    respond_to do |format|
      if user_feedback.save
        format.html { render action: "save" }
        format.json { render json: @user_feedback, status: :created, location: @user_feedback }
      else
        @route = user_feedback.route 
        @user_feedback = user_feedback
        format.html { render action: "rate_route" }
        format.json { render json: @user_feedback.errors, status: :unprocessable_entity }
      end
    end
  end
end
