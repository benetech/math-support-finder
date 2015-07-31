class PlatformAssistiveTechnologiesController < ApplicationController
  before_action :set_platform_assistive_technology, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /platform_assistive_technologies
  def index
    @platform_assistive_technologies = PlatformAssistiveTechnology.all
  end

  # GET /platform_assistive_technologies/1
  def show
  end

  # GET /platform_assistive_technologies/new
  def new
    @platform_assistive_technology = PlatformAssistiveTechnology.new
  end

  # GET /platform_assistive_technologies/1/edit
  def edit
  end

  # POST /platform_assistive_technologies
  def create
    @platform_assistive_technology = PlatformAssistiveTechnology.new(platform_assistive_technology_params)
    flash[:notice] = "#{@platform_assistive_technology} was successfully created." if @platform_assistive_technology.save
    respond_with @platform_assistive_technology
  end

  # PATCH/PUT /platform_assistive_technologies/1
  def update
    flash[:notice] = "#{@platform_assistive_technology} was successfully updated." if @platform_assistive_technology.update(platform_assistive_technology_params)
    respond_with @platform_assistive_technology
  end

  # DELETE /platform_assistive_technologies/1
  def destroy
    @platform_assistive_technology.destroy
    flash[:notice] = 'Platform assistive technology was successfully destroyed.'
    respond_with @platform_assistive_technology
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_assistive_technology
      @platform_assistive_technology = PlatformAssistiveTechnology.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def platform_assistive_technology_params
      params.require(:platform_assistive_technology).permit(:platform_id, :assistive_technology_id)
    end
end
