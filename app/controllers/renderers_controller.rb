class RenderersController < ApplicationController
  before_action :set_renderer, only: [:show, :edit, :update, :destroy]

  # GET /renderers
  # GET /renderers.json
  def index
    @renderers = Renderer.all
  end

  # GET /renderers/1
  # GET /renderers/1.json
  def show
  end

  # GET /renderers/new
  def new
    @renderer = Renderer.new
  end

  # GET /renderers/1/edit
  def edit
  end

  # POST /renderers
  # POST /renderers.json
  def create
    @renderer = Renderer.new(renderer_params)

    respond_to do |format|
      if @renderer.save
        format.html { redirect_to @renderer, notice: 'Renderer was successfully created.' }
        format.json { render :show, status: :created, location: @renderer }
      else
        format.html { render :new }
        format.json { render json: @renderer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renderers/1
  # PATCH/PUT /renderers/1.json
  def update
    respond_to do |format|
      if @renderer.update(renderer_params)
        format.html { redirect_to @renderer, notice: 'Renderer was successfully updated.' }
        format.json { render :show, status: :ok, location: @renderer }
      else
        format.html { render :edit }
        format.json { render json: @renderer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renderers/1
  # DELETE /renderers/1.json
  def destroy
    @renderer.destroy
    respond_to do |format|
      format.html { redirect_to renderers_url, notice: 'Renderer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renderer
      @renderer = Renderer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def renderer_params
      params.require(:renderer).permit(:title, :description, :link, :version)
    end
end
