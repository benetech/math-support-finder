class ContentSourcesController < ApplicationController
  before_action :set_content_source, only: [:show, :edit, :update, :destroy]

  # GET /content_sources
  # GET /content_sources.json
  def index
    @content_sources = ContentSource.all
  end

  # GET /content_sources/1
  # GET /content_sources/1.json
  def show
  end

  # GET /content_sources/new
  def new
    @content_source = ContentSource.new
  end

  # GET /content_sources/1/edit
  def edit
  end

  # POST /content_sources
  # POST /content_sources.json
  def create
    @content_source = ContentSource.new(content_source_params)

    respond_to do |format|
      if @content_source.save
        format.html { redirect_to @content_source, notice: 'Content source was successfully created.' }
        format.json { render :show, status: :created, location: @content_source }
      else
        format.html { render :new }
        format.json { render json: @content_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /content_sources/1
  # PATCH/PUT /content_sources/1.json
  def update
    respond_to do |format|
      if @content_source.update(content_source_params)
        format.html { redirect_to @content_source, notice: 'Content source was successfully updated.' }
        format.json { render :show, status: :ok, location: @content_source }
      else
        format.html { render :edit }
        format.json { render json: @content_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_sources/1
  # DELETE /content_sources/1.json
  def destroy
    @content_source.destroy
    respond_to do |format|
      format.html { redirect_to content_sources_url, notice: 'Content source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_source
      @content_source = ContentSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_source_params
      params.require(:content_source).permit(:title, :description, :link, :version)
    end
end
