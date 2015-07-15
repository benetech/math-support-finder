class RendererVersionsController < ApplicationController
  before_action :set_renderer_version, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /renderer_versions
  def index
    @renderer_versions = RendererVersion.all
  end

  # GET /renderer_versions/1
  def show
  end

  # GET /renderer_versions/new
  def new
    @renderer_version = RendererVersion.new
  end

  # GET /renderer_versions/1/edit
  def edit
  end

  # POST /renderer_versions
  def create
    @renderer_version = RendererVersion.new(renderer_version_params)
    flash[:notice] = "#{@renderer_version} was successfully created." if @renderer_version.save
    respond_with @renderer_version
  end

  # PATCH/PUT /renderer_versions/1
  def update
    flash[:notice] = "#{@renderer_version} was successfully updated." if @renderer_version.save
    respond_with @renderer_version
  end

  # DELETE /renderer_versions/1
  def destroy
    @renderer_version.destroy
    flash[:notice] = 'Renderer version was successfully destroyed.'
    respond_with @renderer_version
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renderer_version
      @renderer_version = RendererVersion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def renderer_version_params
      params.require(:renderer_version).permit(:renderer_id, :version, :notes)
    end
end
