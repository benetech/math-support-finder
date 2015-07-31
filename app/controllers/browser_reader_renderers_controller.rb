class BrowserReaderRenderersController < ApplicationController
  before_action :set_browser_reader_renderer, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /browser_reader_renderers
  def index
    @browser_reader_renderers = BrowserReaderRenderer.all
  end

  # GET /browser_reader_renderers/1
  def show
  end

  # GET /browser_reader_renderers/new
  def new
    @browser_reader_renderer = BrowserReaderRenderer.new
  end

  # GET /browser_reader_renderers/1/edit
  def edit
  end

  # POST /browser_reader_renderers
  def create
    @browser_reader_renderer = BrowserReaderRenderer.new(browser_reader_renderer_params)
    flash[:notice] = "#{@browser_reader_renderer} was successfully created." if @browser_reader_renderer.save
    respond_with @browser_reader_renderer
  end

  # PATCH/PUT /browser_reader_renderers/1
  def update
    flash[:notice] = "#{@browser_reader_renderer} was successfully updated." if @browser_reader_renderer.update(browser_reader_renderer_params)
    respond_with @browser_reader_renderer
  end

  # DELETE /browser_reader_renderers/1
  def destroy
    @browser_reader_renderer.destroy
    flash[:notice] = 'Browser reader renderer was successfully destroyed.'
    respond_with @browser_reader_renderer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_browser_reader_renderer
      @browser_reader_renderer = BrowserReaderRenderer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def browser_reader_renderer_params
      params.require(:browser_reader_renderer).permit(:browser_reader_id, :renderer_id)
    end
end
