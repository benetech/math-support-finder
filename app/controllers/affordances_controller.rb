class AffordancesController < ApplicationController
  before_action :set_affordance, only: [:show, :edit, :update, :destroy]
  require_role :admin, :editor, except: [:show, :index]

  respond_to :html, :json

  # GET /affordances
  def index
    @affordances = Affordance.sorted
  end

  # GET /affordances/1
  def show
  end

  # GET /affordances/new
  def new
    @affordance = Affordance.new
  end

  # GET /affordances/1/edit
  def edit
  end

  # POST /affordances
  def create
    @affordance = Affordance.new(affordance_params)
    flash[:notice] = "#{@affordance} was successfully created." if @affordance.save
    respond_with @affordance
  end

  # PATCH/PUT /affordances/1
  def update
    flash[:notice] = "#{@affordance} was successfully updated." if @affordance.update(affordance_params)
    respond_with @affordance
  end

  # DELETE /affordances/1
  def destroy
    @affordance.destroy
    flash[:notice] = 'Affordance was successfully destroyed.'
    respond_with @affordance
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affordance
      @affordance = Affordance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def affordance_params
      params.require(:affordance).permit(:feature_id, :output_id, :notes)
    end
end
