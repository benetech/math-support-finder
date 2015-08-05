class TechnologiesController < ApplicationController
  before_action :set_technology, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /technologies
  def index
    @technologies = Technology.all
  end

  # GET /technologies/1
  def show
  end

  # GET /technologies/new
  def new
    @technology = Technology.new
  end

  # GET /technologies/1/edit
  def edit
  end

  # POST /technologies
  def create
    @technology = Technology.new(technology_params)
    flash[:notice] = "#{@technology} was successfully created." if @technology.save
    respond_with @technology
  end

  # PATCH/PUT /technologies/1
  def update
    flash[:notice] = "#{@technology} was successfully updated." if @technology.update(technology_params)
    respond_with @technology
  end

  # DELETE /technologies/1
  def destroy
    @technology.destroy
    flash[:notice] = 'Technology was successfully destroyed.'
    respond_with @technology
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technology
      @technology = Technology.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def technology_params
      params.require(:technology).permit(:title, :notes)
    end
end
