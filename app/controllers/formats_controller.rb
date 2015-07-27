class FormatsController < ApplicationController
  before_action :set_format, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /formats
  def index
    @formats = Format.all
  end

  # GET /formats/1
  def show
  end

  # GET /formats/new
  def new
    @format = Format.new
  end

  # GET /formats/1/edit
  def edit
  end

  # POST /formats
  def create
    @format = Format.new(format_params)
    flash[:notice] = "#{@format} was successfully created." if @format.save
    respond_with @format
  end

  # PATCH/PUT /formats/1
  def update
    flash[:notice] = "#{@format} was successfully updated." if @format.save
    respond_with @format
  end

  # DELETE /formats/1
  def destroy
    @format.destroy
    flash[:notice] = 'Format was successfully destroyed.'
    respond_with @format
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_format
      @format = Format.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def format_params
      params.require(:format).permit(:title, :notes)
    end
end
