class PlatformVersionsController < ApplicationController
  before_action :set_platform_version, only: [:show, :edit, :update, :destroy]
  before_filter :admin, except: [:show, :index]

  respond_to :html, :json

  # GET /platform_versions
  def index
    @platform_versions = PlatformVersion.all
  end

  # GET /platform_versions/1
  def show
  end

  # GET /platform_versions/new
  def new
    @platform_version = PlatformVersion.new
  end

  # GET /platform_versions/1/edit
  def edit
  end

  # POST /platform_versions
  def create
    @platform_version = PlatformVersion.new(platform_version_params)
    flash[:notice] = "#{@platform_version} was successfully created." if @platform_version.save
    respond_with @platform_version
  end

  # PATCH/PUT /platform_versions/1
  def update
    flash[:notice] = "#{@platform_version} was successfully updated." if @platform_version.update(platform_version_params)
    respond_with @platform_version
  end

  # DELETE /platform_versions/1
  def destroy
    @platform_version.destroy
    flash[:notice] = 'Platform version was successfully destroyed.'
    respond_with @platform_version
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_version
      @platform_version = PlatformVersion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def platform_version_params
      params.require(:platform_version).permit(:platform_id, :version, :notes)
    end
end
