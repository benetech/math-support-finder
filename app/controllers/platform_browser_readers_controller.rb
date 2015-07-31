class PlatformBrowserReadersController < ApplicationController
  before_action :set_platform_browser_reader, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /platform_browser_readers
  def index
    @platform_browser_readers = PlatformBrowserReader.all
  end

  # GET /platform_browser_readers/1
  def show
  end

  # GET /platform_browser_readers/new
  def new
    @platform_browser_reader = PlatformBrowserReader.new
  end

  # GET /platform_browser_readers/1/edit
  def edit
  end

  # POST /platform_browser_readers
  def create
    @platform_browser_reader = PlatformBrowserReader.new(platform_browser_reader_params)
    flash[:notice] = "#{@platform_browser_reader} was successfully created." if @platform_browser_reader.save
    respond_with @platform_browser_reader
  end

  # PATCH/PUT /platform_browser_readers/1
  def update
    flash[:notice] = "#{@platform_browser_reader} was successfully updated." if @platform_browser_reader.update(platform_browser_reader_params)
    respond_with @platform_browser_reader
  end

  # DELETE /platform_browser_readers/1
  def destroy
    @platform_browser_reader.destroy
    flash[:notice] = 'Platform browser reader was successfully destroyed.'
    respond_with @platform_browser_reader
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_browser_reader
      @platform_browser_reader = PlatformBrowserReader.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def platform_browser_reader_params
      params.require(:platform_browser_reader).permit(:platform_id, :browser_reader_id)
    end
end
