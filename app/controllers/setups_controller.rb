class SetupsController < ApplicationController
  before_action :set_setup, only: [:show, :edit, :update, :destroy]
  before_action :clear_search_index, :only => [:index, :results]
  before_filter :admin, except: [:show, :index, :new, :create, :results, :search]

  respond_to :html, :json, :js

  # GET /setups
  def index
    prep_setup_search
  end

  # GET /setups/1
  def show
    @outputs = Output.all
  end

  # GET /setups/new
  def new
    if params[:id]
      setup = Setup.find(params[:id])
      @setup = setup.dup
      @setup.affordances  = setup.affordances
      @setup.content_sources = setup.content_sources
      puts @setup.attributes
      flash[:notice] = "We have copied over the previous setup."
    else
      @setup = Setup.new
    end
  end

  # GET /setups/1/edit
  def edit
  end

  # POST /setups
  def create
    @setup = Setup.new(setup_params)
    flash[:notice] = "#{@setup} was successfully created." if @setup.save
    respond_with @setup
  end

  # PATCH/PUT /setups/1
  def update
    flash[:notice] = "#{@setup} was successfully updated." if @setup.update(setup_params)
    respond_with @setup
  end

  # DELETE /setups/1
  def destroy
    @setup.destroy
    flash[:notice] = 'Setup was successfully destroyed.'
    respond_with @setup
  end

  def results
    prep_setup_search
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setup
      @setup = Setup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def setup_params
      params.require(:setup).permit(:platform_version_id, :renderer_id, :browser_reader_version_id, :assistive_technology_version_id, :file_format_id, :workflow_status_id, :notes, content_sources_id: [], affordance_ids: [])
    end
end
