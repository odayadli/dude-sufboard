class SurfboardsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @surfboards = policy_scope(Surfboard)
    respond_to do |format|
      format.html
      format.json { render json: { surfboards: @surfboards } }
      format.csv { send_data @surfboards.to_csv(%w[name details price location user_id]) }
    end
  end

  def search_surfboard
    search = params[:search]
    @surfboards = if params[:search].present?
                    SurfboardService.new.search_surfboard(search)
                  else
                    SurfboardService.new.all_surfboards
                  end
    authorize @surfboards
  end

  def filter_surfboards
    order = params[:order]
    @surfboards = SurfboardService.new.filter_surfboards(order)
    authorize @surfboards
  end

  def my_surfboards
    @mysurfboards = current_user.surfboards
    authorize @mysurfboards
  end

  def show
    @surfboard = SurfboardService.new.get_surfboard(params[:id])
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
    @surfboard = SurfboardService.new.create_surfboard(surfboard_params, current_user)
    authorize @surfboard
    redirect_to surfboards_path(anchor: "surfboard-#{@surfboard.id}")
  end

  def edit
    @surfboard = Surfboard.find(params[:id])
    authorize @surfboard
  end

  def update
    @surfboard = SurfboardService.new.update_surfboard(params[:id], current_user, surfboard_params)
    authorize @surfboard
    redirect_to surfboard_path(@surfboard)
  end

  def destroy
    @surfboards = SurfboardService.new.destroy(params[:id], current_user)
    authorize @surfboards
    redirect_to my_surfboards_surfboards_path
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
