class BrowserReaderFormatsController < ApplicationController
  before_action :set_browser_reader_format, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /browser_reader_formats
  def index
    @browser_reader_formats = BrowserReaderFormat.all
  end

  # GET /browser_reader_formats/1
  def show
  end

  # GET /browser_reader_formats/new
  def new
    @browser_reader_format = BrowserReaderFormat.new
  end

  # GET /browser_reader_formats/1/edit
  def edit
  end

  # POST /browser_reader_formats
  def create
    @browser_reader_format = BrowserReaderFormat.new(browser_reader_format_params)
    flash[:notice] = "#{@browser_reader_format} was successfully created." if @browser_reader_format.save
    respond_with @browser_reader_format
  end

  # PATCH/PUT /browser_reader_formats/1
  def update
    flash[:notice] = "#{@browser_reader_format} was successfully updated." if @browser_reader_format.save
    respond_with @browser_reader_format
  end

  # DELETE /browser_reader_formats/1
  def destroy
    @browser_reader_format.destroy
    flash[:notice] = 'Browser reader format was successfully destroyed.'
    respond_with @browser_reader_format
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_browser_reader_format
      @browser_reader_format = BrowserReaderFormat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def browser_reader_format_params
      params.require(:browser_reader_format).permit(:browser_reader_id, :format_id)
    end
end
