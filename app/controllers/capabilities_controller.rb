class CapabilitiesController < ApplicationController
  before_action :set_capability, only: [:show, :edit, :update, :destroy]
  before_action :set_setup, only: [:new]
  respond_to :html, :json

  # GET /capabilities
  def index
    @capabilities = Capability.all
  end

  # GET /capabilities/1
  def show
  end

  # GET /capabilities/new
  def new
    @capability = Capability.new
  end

  # GET /capabilities/1/edit
  def edit
  end

  # POST /capabilities
  def create
    @capability = Capability.new(capability_params)
    flash[:notice] = "#{@capability} was successfully created." if @capability.save
    respond_with @capability
  end

  # PATCH/PUT /capabilities/1
  def update
    flash[:notice] = "#{@capability} was successfully updated." if @capability.update(capability_params)
    respond_with @capability
  end

  # DELETE /capabilities/1
  def destroy
    @capability.destroy
    flash[:notice] = 'Capability was successfully destroyed.'
    respond_with @capability
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capability
      @capability = Capability.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def capability_params
      params.require(:capability).permit(:affordance_id, :setup_id, :verification_status_id)
    end

    def set_setup
      @setup = Setup.find(params[:setup_id])
    end
end
