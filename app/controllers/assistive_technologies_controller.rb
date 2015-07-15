class AssistiveTechnologiesController < ApplicationController
  before_action :set_assistive_technology, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /assistive_technologies
  def index
    @assistive_technologies = AssistiveTechnology.all
  end

  # GET /assistive_technologies/1
  def show
  end

  # GET /assistive_technologies/new
  def new
    @assistive_technology = AssistiveTechnology.new
  end

  # GET /assistive_technologies/1/edit
  def edit
  end

  # POST /assistive_technologies
  def create
    @assistive_technology = AssistiveTechnology.new(assistive_technology_params)
    flash[:notice] = "#{@assistive_technology} was successfully created." if @assistive_technology.save
    respond_with @assistive_technology
  end

  # PATCH/PUT /assistive_technologies/1
  def update
    flash[:notice] = "#{@assistive_technology} was successfully updated." if @assistive_technology.save
    respond_with @assistive_technology
  end

  # DELETE /assistive_technologies/1
  def destroy
    @assistive_technology.destroy
    flash[:notice] = 'Assistive technology was successfully destroyed.'
    respond_with @assistive_technology
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistive_technology
      @assistive_technology = AssistiveTechnology.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assistive_technology_params
      params.require(:assistive_technology).permit(:title, :notes)
    end
end
