class MatrixEntriesController < ApplicationController
  before_action :set_matrix_entry, only: [:show, :edit, :update, :destroy]

  # GET /matrix_entries
  # GET /matrix_entries.json
  def index
    @matrix_entries = MatrixEntry.all
  end

  # GET /matrix_entries/1
  # GET /matrix_entries/1.json
  def show
  end

  # GET /matrix_entries/new
  def new
    @matrix_entry = MatrixEntry.new
  end

  # GET /matrix_entries/1/edit
  def edit
  end

  # POST /matrix_entries
  # POST /matrix_entries.json
  def create
    @matrix_entry = MatrixEntry.new(matrix_entry_params)

    respond_to do |format|
      if @matrix_entry.save
        format.html { redirect_to @matrix_entry, notice: 'Matrix entry was successfully created.' }
        format.json { render :show, status: :created, location: @matrix_entry }
      else
        format.html { render :new }
        format.json { render json: @matrix_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrix_entries/1
  # PATCH/PUT /matrix_entries/1.json
  def update
    respond_to do |format|
      if @matrix_entry.update(matrix_entry_params)
        format.html { redirect_to @matrix_entry, notice: 'Matrix entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @matrix_entry }
      else
        format.html { render :edit }
        format.json { render json: @matrix_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrix_entries/1
  # DELETE /matrix_entries/1.json
  def destroy
    @matrix_entry.destroy
    respond_to do |format|
      format.html { redirect_to matrix_entries_url, notice: 'Matrix entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrix_entry
      @matrix_entry = MatrixEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matrix_entry_params
      params.require(:matrix_entry).permit(:browser_reader_id, :renderer_id, :format_id, :platform_id, :assistive_technology_id)
    end
end
