class VerificationStatusesController < ApplicationController
  before_action :set_verification_status, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /verification_statuses
  def index
    @verification_statuses = VerificationStatus.all
  end

  # GET /verification_statuses/1
  def show
  end

  # GET /verification_statuses/new
  def new
    @verification_status = VerificationStatus.new
  end

  # GET /verification_statuses/1/edit
  def edit
  end

  # POST /verification_statuses
  def create
    @verification_status = VerificationStatus.new(verification_status_params)
    flash[:notice] = "#{@verification_status} was successfully created." if @verification_status.save
    respond_with @verification_status
  end

  # PATCH/PUT /verification_statuses/1
  def update
    flash[:notice] = "#{@verification_status} was successfully updated." if @verification_status.update(verification_status_params)
    respond_with @verification_status
  end

  # DELETE /verification_statuses/1
  def destroy
    @verification_status.destroy
    flash[:notice] = 'Verification status was successfully destroyed.'
    respond_with @verification_status
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verification_status
      @verification_status = VerificationStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def verification_status_params
      params.require(:verification_status).permit(:title)
    end
end
