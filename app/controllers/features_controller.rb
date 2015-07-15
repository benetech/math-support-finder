class FeaturesController < ApplicationController
  before_action :set_feature, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /features
  def index
    @features = Feature.all
  end

  # GET /features/1
  def show
  end

  # GET /features/new
  def new
    @feature = Feature.new
  end

  # GET /features/1/edit
  def edit
  end

  # POST /features
  def create
    @feature = Feature.new(feature_params)
    flash[:notice] = "#{@feature} was successfully created." if @feature.save
    respond_with @feature
  end

  # PATCH/PUT /features/1
  def update
    flash[:notice] = "#{@feature} was successfully updated." if @feature.save
    respond_with @feature
  end

  # DELETE /features/1
  def destroy
    @feature.destroy
    flash[:notice] = 'Feature was successfully destroyed.'
    respond_with @feature
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feature
      @feature = Feature.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def feature_params
      params.require(:feature).permit(:title, :notes)
    end
end
