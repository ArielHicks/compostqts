class GardensController < ApplicationController
  before_action :find_attraction, only: [:show, :edit, :update]
  before_action :admin_only, except: [:index, :show]
  before_action :autheticate_user!

  def index
    @gardens = Garden.all
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.create(garden_params)
    if @garden
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @garden.update(garden_params)
    if @garden.save
      redirect_to garden_path(@garden)
    else
      render :edit
    end
  end

  private

  def find_garden
    @garden = Garden.find_by(id: params[:id])
  end

  def garden_params
    params.require(:garden).permit(:name, :min_strength, :happiness_rating, :heat_rating, :membership_years)
  end
end
