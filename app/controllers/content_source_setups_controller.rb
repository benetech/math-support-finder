class ContentSourceSetupsController < ApplicationController
  before_action :set_content_source_setup, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /content_source_setups
  def index
    @content_source_setups = ContentSourceSetup.all
  end

  # GET /content_source_setups/1
  def show
  end

  # GET /content_source_setups/new
  def new
    @content_source_setup = ContentSourceSetup.new
  end

  # GET /content_source_setups/1/edit
  def edit
  end

  # POST /content_source_setups
  def create
    @content_source_setup = ContentSourceSetup.new(content_source_setup_params)
    flash[:notice] = "#{@content_source_setup} was successfully created." if @content_source_setup.save
    respond_with @content_source_setup
  end

  # PATCH/PUT /content_source_setups/1
  def update
    flash[:notice] = "#{@content_source_setup} was successfully updated." if @content_source_setup.save
    respond_with @content_source_setup
  end

  # DELETE /content_source_setups/1
  def destroy
    @content_source_setup.destroy
    flash[:notice] = 'Content source setup was successfully destroyed.'
    respond_with @content_source_setup
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_source_setup
      @content_source_setup = ContentSourceSetup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_source_setup_params
      params.require(:content_source_setup).permit(:setup_id, :content_source_id)
    end
end
