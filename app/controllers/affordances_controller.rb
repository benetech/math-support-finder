class AffordancesController < ApplicationController
  before_action :set_affordance, only: [:show, :edit, :update, :destroy]

  # GET /affordances
  # GET /affordances.json
  def index
    @affordances = Affordance.all
  end

  # GET /affordances/1
  # GET /affordances/1.json
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
  # POST /affordances.json
  def create
    @affordance = Affordance.new(affordance_params)

    respond_to do |format|
      if @affordance.save
        format.html { redirect_to @affordance, notice: 'Affordance was successfully created.' }
        format.json { render :show, status: :created, location: @affordance }
      else
        format.html { render :new }
        format.json { render json: @affordance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /affordances/1
  # PATCH/PUT /affordances/1.json
  def update
    respond_to do |format|
      if @affordance.update(affordance_params)
        format.html { redirect_to @affordance, notice: 'Affordance was successfully updated.' }
        format.json { render :show, status: :ok, location: @affordance }
      else
        format.html { render :edit }
        format.json { render json: @affordance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affordances/1
  # DELETE /affordances/1.json
  def destroy
    @affordance.destroy
    respond_to do |format|
      format.html { redirect_to affordances_url, notice: 'Affordance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affordance
      @affordance = Affordance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def affordance_params
      params.require(:affordance).permit(:type, :verified, :details, :matrix_entry_id)
    end
end
