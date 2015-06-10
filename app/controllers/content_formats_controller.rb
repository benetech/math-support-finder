class ContentFormatsController < ApplicationController
  before_action :set_content_format, only: [:show, :edit, :update, :destroy]

  # GET /content_formats
  # GET /content_formats.json
  def index
    @content_formats = ContentFormat.all
  end

  # GET /content_formats/1
  # GET /content_formats/1.json
  def show
  end

  # GET /content_formats/new
  def new
    @content_format = ContentFormat.new
  end

  # GET /content_formats/1/edit
  def edit
  end

  # POST /content_formats
  # POST /content_formats.json
  def create
    @content_format = ContentFormat.new(content_format_params)

    respond_to do |format|
      if @content_format.save
        format.html { redirect_to @content_format, notice: 'ContentFormat was successfully created.' }
        format.json { render :show, status: :created, location: @content_format }
      else
        format.html { render :new }
        format.json { render json: @content_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formats/1
  # PATCH/PUT /content_formats/1.json
  def update
    respond_to do |format|
      if @content_format.update(content_format_params)
        format.html { redirect_to @content_format, notice: 'ContentFormat was successfully updated.' }
        format.json { render :show, status: :ok, location: @content_format }
      else
        format.html { render :edit }
        format.json { render json: @content_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_formats/1
  # DELETE /content_formats/1.json
  def destroy
    @content_format.destroy
    respond_to do |format|
      format.html { redirect_to content_formats_url, notice: 'ContentFormat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_format
      @content_format = ContentFormat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_format_params
      params.require(:content_format).permit(:title, :description, :link, :version)
    end
end
