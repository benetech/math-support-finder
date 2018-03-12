class BrowserReadersController < ApplicationController
  before_action :set_browser_reader, only: [:show, :edit, :update, :destroy]
  require_role :admin, :editor, except: [:show, :index]

  respond_to :html, :json

  # GET /browser_readers
  def index
    @browser_readers = BrowserReader.all
  end

  # GET /browser_readers/1
  def show
  end

  # GET /browser_readers/new
  def new
    @browser_reader = BrowserReader.new
  end

  # GET /browser_readers/1/edit
  def edit
  end

  # POST /browser_readers
  def create
    @browser_reader = BrowserReader.new(browser_reader_params)
    flash[:notice] = "#{@browser_reader} was successfully created." if @browser_reader.save
    respond_with @browser_reader
  end

  # PATCH/PUT /browser_readers/1
  def update
    flash[:notice] = "#{@browser_reader} was successfully updated." if @browser_reader.update(browser_reader_params)
    respond_with @browser_reader
  end

  # DELETE /browser_readers/1
  def destroy
    @browser_reader.destroy
    flash[:notice] = 'Browser reader was successfully destroyed.'
    respond_with @browser_reader
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_browser_reader
      @browser_reader = BrowserReader.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def browser_reader_params
      params.require(:browser_reader).permit(:title, :notes,
                                             renderer_ids: [], 
                                             platform_ids: [], 
                                             assistive_technology_ids: [], 
                                             file_format_ids: [])
    end
end
