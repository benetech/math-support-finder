class OutputsController < ApplicationController
  before_action :set_output, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /outputs
  def index
    @outputs = Output.all
  end

  # GET /outputs/1
  def show
  end

  # GET /outputs/new
  def new
    @output = Output.new
  end

  # GET /outputs/1/edit
  def edit
  end

  # POST /outputs
  def create
    @output = Output.new(output_params)
    flash[:notice] = "#{@output} was successfully created." if @output.save
    respond_with @output
  end

  # PATCH/PUT /outputs/1
  def update
    flash[:notice] = "#{@output} was successfully updated." if @output.update(output_params)
    respond_with @output
  end

  # DELETE /outputs/1
  def destroy
    @output.destroy
    flash[:notice] = 'Output was successfully destroyed.'
    respond_with @output
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_output
      @output = Output.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def output_params
      params.require(:output).permit(:title, :notes, feature_ids: [])
    end
end
