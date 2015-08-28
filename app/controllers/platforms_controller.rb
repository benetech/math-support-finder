class PlatformsController < ApplicationController
  before_action :set_platform, only: [:show, :edit, :update, :destroy]
  before_filter :admin, except: [:show, :index]

  respond_to :html, :json

  # GET /platforms
  def index
    @platforms = Platform.all
  end

  # GET /platforms/1
  def show
  end

  # GET /platforms/new
  def new
    @platform = Platform.new
  end

  # GET /platforms/1/edit
  def edit
  end

  # POST /platforms
  def create
    @platform = Platform.new(platform_params)
    flash[:notice] = "#{@platform} was successfully created." if @platform.save
    respond_with @platform
  end

  # PATCH/PUT /platforms/1
  def update
    flash[:notice] = "#{@platform} was successfully updated." if @platform.update(platform_params)
    respond_with @platform
  end

  # DELETE /platforms/1
  def destroy
    @platform.destroy
    flash[:notice] = 'Platform was successfully destroyed.'
    respond_with @platform
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform
      @platform = Platform.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def platform_params
      params.require(:platform).permit(:title, :notes, browser_reader_ids: [], assistive_technology_ids: [])
    end
end
