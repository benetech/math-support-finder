class ConfigurationsController < ApplicationController
  before_action :set_configuration, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /configurations
  def index
    @configurations = Configuration.all
  end

  # GET /configurations/1
  def show
  end

  # GET /configurations/new
  def new
    @configuration = Configuration.new
  end

  # GET /configurations/1/edit
  def edit
  end

  # POST /configurations
  def create
    @configuration = Configuration.new(configuration_params)
    flash[:notice] = "#{@configuration} was successfully created." if @configuration.save
    respond_with @configuration
  end

  # PATCH/PUT /configurations/1
  def update
    flash[:notice] = "#{@configuration} was successfully updated." if @configuration.save
    respond_with @configuration
  end

  # DELETE /configurations/1
  def destroy
    @configuration.destroy
    flash[:notice] = 'Configuration was successfully destroyed.'
    respond_with @configuration
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configuration
      @configuration = Configuration.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def configuration_params
      params.require(:configuration).permit(:platform_version_id, :renderer_version_id, :browser_reader_version_id, :assistive_technology_version_id, :platform_version_id, :format_id, :workflow_status_id)
    end
end
