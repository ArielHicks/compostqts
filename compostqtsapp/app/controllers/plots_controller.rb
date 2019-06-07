class PlotsController < ApplicationController
  before_action :require_login
  before_action :autheticate_user!


  def create
    plot = Plot.create(user_id: current_user.id, garden_id: params[:garden_id])
    if garden
      response = plot.take_plot
      flash[:notice] = response
      redirect_to user_path(plot.user)
    else
      redirect_to garden_path(plot.garden)
    end

  end
end
