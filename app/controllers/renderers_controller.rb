class RenderersController < ApplicationController
  before_action :set_renderer, only: [:show, :edit, :update, :destroy]
  before_filter :admin, except: [:show, :index]

  respond_to :html, :json

  # GET /renderers
  def index
    @renderers = Renderer.all
  end

  # GET /renderers/1
  def show
  end

  # GET /renderers/new
  def new
    @renderer = Renderer.new
  end

  # GET /renderers/1/edit
  def edit
  end

  # POST /renderers
  def create
    @renderer = Renderer.new(renderer_params)
    flash[:notice] = "#{@renderer} was successfully created." if @renderer.save
    respond_with @renderer
  end

  # PATCH/PUT /renderers/1
  def update
    flash[:notice] = "#{@renderer} was successfully updated." if @renderer.update(renderer_params)
    respond_with @renderer
  end

  # DELETE /renderers/1
  def destroy
    @renderer.destroy
    flash[:notice] = 'Renderer was successfully destroyed.'
    respond_with @renderer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renderer
      @renderer = Renderer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def renderer_params
      params.require(:renderer).permit(:title, :notes, browser_reader_ids: [])
    end
end
