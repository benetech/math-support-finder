class AssistiveTechnologyVersionsController < ApplicationController
  before_action :set_assistive_technology_version, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /assistive_technology_versions
  def index
    @assistive_technology_versions = AssistiveTechnologyVersion.all
  end

  # GET /assistive_technology_versions/1
  def show
  end

  # GET /assistive_technology_versions/new
  def new
    @assistive_technology_version = AssistiveTechnologyVersion.new
  end

  # GET /assistive_technology_versions/1/edit
  def edit
  end

  # POST /assistive_technology_versions
  def create
    @assistive_technology_version = AssistiveTechnologyVersion.new(assistive_technology_version_params)
    flash[:notice] = "#{@assistive_technology_version} was successfully created." if @assistive_technology_version.save
    respond_with @assistive_technology_version
  end

  # PATCH/PUT /assistive_technology_versions/1
  def update
    flash[:notice] = "#{@assistive_technology_version} was successfully updated." if @assistive_technology_version.update(assistive_technology_version_params)
    respond_with @assistive_technology_version
  end

  # DELETE /assistive_technology_versions/1
  def destroy
    @assistive_technology_version.destroy
    flash[:notice] = 'Assistive technology version was successfully destroyed.'
    respond_with @assistive_technology_version
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistive_technology_version
      @assistive_technology_version = AssistiveTechnologyVersion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assistive_technology_version_params
      params.require(:assistive_technology_version).permit(:assistive_technology_id, :version, :notes)
    end
end
