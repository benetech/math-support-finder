class BrowserReaderVersionsController < ApplicationController
  before_action :set_browser_reader_version, only: [:show, :edit, :update, :destroy]
  require_role :admin, :editor, except: [:show, :index]

  respond_to :html, :json

  # GET /browser_reader_versions
  def index
    @browser_reader_versions = BrowserReaderVersion.all
  end

  # GET /browser_reader_versions/1
  def show
  end

  # GET /browser_reader_versions/new
  def new
    @browser_reader_version = BrowserReaderVersion.new
  end

  # GET /browser_reader_versions/1/edit
  def edit
  end

  # POST /browser_reader_versions
  def create
    @browser_reader_version = BrowserReaderVersion.new(browser_reader_version_params)
    flash[:notice] = "#{@browser_reader_version} was successfully created." if @browser_reader_version.save
    respond_with @browser_reader_version
  end

  # PATCH/PUT /browser_reader_versions/1
  def update
    flash[:notice] = "#{@browser_reader_version} was successfully updated." if @browser_reader_version.update(browser_reader_version_params)
    respond_with @browser_reader_version
  end

  # DELETE /browser_reader_versions/1
  def destroy
    @browser_reader_version.destroy
    flash[:notice] = 'Browser reader version was successfully destroyed.'
    respond_with @browser_reader_version
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_browser_reader_version
      @browser_reader_version = BrowserReaderVersion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def browser_reader_version_params
      params.require(:browser_reader_version).permit(:browser_reader_id, :version, :notes)
    end
end
