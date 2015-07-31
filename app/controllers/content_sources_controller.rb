class ContentSourcesController < ApplicationController
  before_action :set_content_source, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /content_sources
  def index
    @content_sources = ContentSource.all
  end

  # GET /content_sources/1
  def show
  end

  # GET /content_sources/new
  def new
    @content_source = ContentSource.new
  end

  # GET /content_sources/1/edit
  def edit
  end

  # POST /content_sources
  def create
    @content_source = ContentSource.new(content_source_params)
    flash[:notice] = "#{@content_source} was successfully created." if @content_source.save
    respond_with @content_source
  end

  # PATCH/PUT /content_sources/1
  def update
    flash[:notice] = "#{@content_source} was successfully updated." if @content_source.update(content_source_params)
    respond_with @content_source
  end

  # DELETE /content_sources/1
  def destroy
    @content_source.destroy
    flash[:notice] = 'Content source was successfully destroyed.'
    respond_with @content_source
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_source
      @content_source = ContentSource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_source_params
      params.require(:content_source).permit(:title, :notes)
    end
end
