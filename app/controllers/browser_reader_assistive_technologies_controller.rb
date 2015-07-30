class BrowserReaderAssistiveTechnologiesController < ApplicationController
  before_action :set_browser_reader_assistive_technology, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /browser_reader_assistive_technologies
  def index
    @browser_reader_assistive_technologies = BrowserReaderAssistiveTechnology.all
  end

  # GET /browser_reader_assistive_technologies/1
  def show
  end

  # GET /browser_reader_assistive_technologies/new
  def new
    @browser_reader_assistive_technology = BrowserReaderAssistiveTechnology.new
  end

  # GET /browser_reader_assistive_technologies/1/edit
  def edit
  end

  # POST /browser_reader_assistive_technologies
  def create
    @browser_reader_assistive_technology = BrowserReaderAssistiveTechnology.new(browser_reader_assistive_technology_params)
    flash[:notice] = "#{@browser_reader_assistive_technology} was successfully created." if @browser_reader_assistive_technology.save
    respond_with @browser_reader_assistive_technology
  end

  # PATCH/PUT /browser_reader_assistive_technologies/1
  def update
    flash[:notice] = "#{@browser_reader_assistive_technology} was successfully updated." if @browser_reader_assistive_technology.save
    respond_with @browser_reader_assistive_technology
  end

  # DELETE /browser_reader_assistive_technologies/1
  def destroy
    @browser_reader_assistive_technology.destroy
    flash[:notice] = 'Browser reader assistive technology was successfully destroyed.'
    respond_with @browser_reader_assistive_technology
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_browser_reader_assistive_technology
      @browser_reader_assistive_technology = BrowserReaderAssistiveTechnology.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def browser_reader_assistive_technology_params
      params.require(:browser_reader_assistive_technology).permit(:browser_reader_id, :assistive_technology_id)
    end
end
