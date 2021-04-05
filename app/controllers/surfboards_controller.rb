require 'csv'

class SurfboardsController < ApplicationController

  def initialize
    @surfboard_service = SurfboardService.new
  end

  def index
    @surfboards = policy_scope(Surfboard)
    respond_to do |format|
      format.html
      format.csv { send_data @surfboards.to_csv(%w[name details price location user_id]) }
    end
    @markers = @surfboards.geocoded.map do |surfboard|
      {
        lat: surfboard.latitude,
        lng: surfboard.longitude,
        image_url: helpers.asset_url('surfboard.png')
      }
    end
  end

  def my_surfboards
    @surfboards = current_user.surfboards
    authorize @surfboards
  end

  def show
    @surfboard = @surfboard_service.get_surfboard(params[:id])
    authorize @surfboard
    @marker =
      [{
        lat: @surfboard.latitude,
        lng: @surfboard.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { surfboard: @surfboard }),
        image_url: helpers.asset_url('surfboard.png')
      }]
  end

  def new
    @surfboard = Surfboard.new
    authorize @surfboard
  end

  def create
    @surfboard = @surfboard_service.create_surfboard(surfboard_params, current_user)
    authorize @surfboard
    redirect_to surfboard_path(@surfboard)
  end


  def edit
    @surfboard = Surfboard.find(params[:id])
    authorize @surfboard
  end

  def update
    @surfboard = @surfboard_service.update_surfboard(params[:id], current_user, surfboard_params)
    authorize @surfboard
    redirect_to surfboard_path(@surfboard)
  end

  def destroy
    @surfboard_service.delete_surfboard(params[:id], current_user)
    redirect_to surfboards_path
  end

  def import_surfboards
    Surfboard.import(params[:file])
    authorize Surfboard
    redirect_to surfboards_path, notice: 'Surfboards Added Successfully'
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:name, :details, :price, :photo, :location, :search)
  end


end
