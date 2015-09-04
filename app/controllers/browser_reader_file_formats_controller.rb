class BrowserReaderFileFormatsController < ApplicationController
  before_action :set_browser_reader_file_format, only: [:show, :edit, :update, :destroy]
  before_filter :admin, except: [:show, :index]

  respond_to :html, :json

  # GET /browser_reader_file_formats
  def index
    @browser_reader_file_formats = BrowserReaderFileFormat.all
  end

  # GET /browser_reader_file_formats/1
  def show
  end

  # GET /browser_reader_file_formats/new
  def new
    @browser_reader_file_format = BrowserReaderFileFormat.new
  end

  # GET /browser_reader_file_formats/1/edit
  def edit
  end

  # POST /browser_reader_file_formats
  def create
    @browser_reader_file_format = BrowserReaderFileFormat.new(browser_reader_file_format_params)
    flash[:notice] = "#{@browser_reader_file_format} was successfully created." if @browser_reader_file_format.save
    respond_with @browser_reader_file_format
  end

  # PATCH/PUT /browser_reader_file_formats/1
  def update
    flash[:notice] = "#{@browser_reader_file_format} was successfully updated." if @browser_reader_file_format.update(browser_reader_file_format_params)
    respond_with @browser_reader_file_format
  end

  # DELETE /browser_reader_file_formats/1
  def destroy
    @browser_reader_file_format.destroy
    flash[:notice] = 'Browser reader file format was successfully destroyed.'
    respond_with @browser_reader_file_format
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_browser_reader_file_format
      @browser_reader_file_format = BrowserReaderFileFormat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def browser_reader_file_format_params
      params.require(:browser_reader_file_format).permit(:browser_reader_id, :file_format_id)
    end
end
