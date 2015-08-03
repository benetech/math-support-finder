class SetupsController < ApplicationController
  before_action :set_setup, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /setups
  def index
    @q = Setup.ransack(params[:q])
    @setups = @q.result.page(params[:page])
  end

  # GET /setups/1
  def show
  end

  # GET /setups/new
  def new
    @setup = Setup.new
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setup
      @setup = Setup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def setup_params
      params.require(:setup).permit(:platform_version_id, :renderer_version_id, :browser_reader_version_id, :assistive_technology_version_id, :file_format_id, :workflow_status_id)
    end
end
