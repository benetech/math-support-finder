class AssistiveTechnologiesController < ApplicationController
  before_action :set_assistive_technology, only: [:show, :edit, :update, :destroy]

  # GET /assistive_technologies
  # GET /assistive_technologies.json
  def index
    @assistive_technologies = AssistiveTechnology.all
  end

  # GET /assistive_technologies/1
  # GET /assistive_technologies/1.json
  def show
  end

  # GET /assistive_technologies/new
  def new
    @assistive_technology = AssistiveTechnology.new
  end

  # GET /assistive_technologies/1/edit
  def edit
    @platforms = Platform.all
  end

  # POST /assistive_technologies
  # POST /assistive_technologies.json
  def create
    @assistive_technology = AssistiveTechnology.new(assistive_technology_params)

    respond_to do |format|
      if @assistive_technology.save
        format.html { redirect_to @assistive_technology, notice: 'Assistive technology was successfully created.' }
        format.json { render :show, status: :created, location: @assistive_technology }
      else
        format.html { render :new }
        format.json { render json: @assistive_technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assistive_technologies/1
  # PATCH/PUT /assistive_technologies/1.json
  def update
    respond_to do |format|
      if @assistive_technology.update(assistive_technology_params)
        format.html { redirect_to @assistive_technology, notice: 'Assistive technology was successfully updated.' }
        format.json { render :show, status: :ok, location: @assistive_technology }
      else
        format.html { render :edit }
        format.json { render json: @assistive_technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistive_technologies/1
  # DELETE /assistive_technologies/1.json
  def destroy
    @assistive_technology.destroy
    respond_to do |format|
      format.html { redirect_to assistive_technologies_url, notice: 'Assistive technology was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistive_technology
      @assistive_technology = AssistiveTechnology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assistive_technology_params
      params.require(:assistive_technology).permit(:title, :description, :link, :version, :platform_id)
    end
end
