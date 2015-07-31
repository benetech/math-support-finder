class FileFormatsController < ApplicationController
  before_action :set_file_format, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /file_formats
  def index
    @file_formats = FileFormat.all
  end

  # GET /file_formats/1
  def show
  end

  # GET /file_formats/new
  def new
    @file_format = FileFormat.new
  end

  # GET /file_formats/1/edit
  def edit
  end

  # POST /file_formats
  def create
    @file_format = FileFormat.new(file_format_params)
    flash[:notice] = "#{@file_format} was successfully created." if @file_format.save
    respond_with @file_format
  end

  # PATCH/PUT /file_formats/1
  def update
    flash[:notice] = "#{@file_format} was successfully updated." if @file_format.update(file_format_params)
    respond_with @file_format
  end

  # DELETE /file_formats/1
  def destroy
    @file_format.destroy
    flash[:notice] = 'File format was successfully destroyed.'
    respond_with @file_format
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_format
      @file_format = FileFormat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def file_format_params
      params.require(:file_format).permit(:title, :notes)
    end
end
