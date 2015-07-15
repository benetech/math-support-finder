class ContentSourceConfigurationsController < ApplicationController
  before_action :set_content_source_configuration, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /content_source_configurations
  def index
    @content_source_configurations = ContentSourceConfiguration.all
  end

  # GET /content_source_configurations/1
  def show
  end

  # GET /content_source_configurations/new
  def new
    @content_source_configuration = ContentSourceConfiguration.new
  end

  # GET /content_source_configurations/1/edit
  def edit
  end

  # POST /content_source_configurations
  def create
    @content_source_configuration = ContentSourceConfiguration.new(content_source_configuration_params)
    flash[:notice] = "#{@content_source_configuration} was successfully created." if @content_source_configuration.save
    respond_with @content_source_configuration
  end

  # PATCH/PUT /content_source_configurations/1
  def update
    flash[:notice] = "#{@content_source_configuration} was successfully updated." if @content_source_configuration.save
    respond_with @content_source_configuration
  end

  # DELETE /content_source_configurations/1
  def destroy
    @content_source_configuration.destroy
    flash[:notice] = 'Content source configuration was successfully destroyed.'
    respond_with @content_source_configuration
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_source_configuration
      @content_source_configuration = ContentSourceConfiguration.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_source_configuration_params
      params.require(:content_source_configuration).permit(:configuration_id, :content_source_id)
    end
end
