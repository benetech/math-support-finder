class PatsController < ApplicationController
  before_action :set_pat, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /pats
  def index
    @pats = Pat.all
  end

  # GET /pats/1
  def show
  end

  # GET /pats/new
  def new
    @pat = Pat.new
  end

  # GET /pats/1/edit
  def edit
  end

  # POST /pats
  def create
    @pat = Pat.new(pat_params)
    flash[:notice] = "#{@pat} was successfully created." if @pat.save
    respond_with @pat
  end

  # PATCH/PUT /pats/1
  def update
    flash[:notice] = "#{@pat} was successfully updated." if @pat.save
    respond_with @pat
  end

  # DELETE /pats/1
  def destroy
    @pat.destroy
    flash[:notice] = 'Pat was successfully destroyed.'
    respond_with @pat
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pat
      @pat = Pat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pat_params
      params.require(:pat).permit(:platform_id, :assistive_technology_id)
    end
end
