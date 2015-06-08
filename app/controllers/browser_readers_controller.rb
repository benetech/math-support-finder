class BrowserReadersController < ApplicationController
  before_action :set_browser_reader, only: [:show, :edit, :update, :destroy]

  # GET /browser_readers
  # GET /browser_readers.json
  def index
    @browser_readers = BrowserReader.all
  end

  # GET /browser_readers/1
  # GET /browser_readers/1.json
  def show
  end

  # GET /browser_readers/new
  def new
    @browser_reader = BrowserReader.new
  end

  # GET /browser_readers/1/edit
  def edit
  end

  # POST /browser_readers
  # POST /browser_readers.json
  def create
    @browser_reader = BrowserReader.new(browser_reader_params)

    respond_to do |format|
      if @browser_reader.save
        format.html { redirect_to @browser_reader, notice: 'Browser reader was successfully created.' }
        format.json { render :show, status: :created, location: @browser_reader }
      else
        format.html { render :new }
        format.json { render json: @browser_reader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /browser_readers/1
  # PATCH/PUT /browser_readers/1.json
  def update
    respond_to do |format|
      if @browser_reader.update(browser_reader_params)
        format.html { redirect_to @browser_reader, notice: 'Browser reader was successfully updated.' }
        format.json { render :show, status: :ok, location: @browser_reader }
      else
        format.html { render :edit }
        format.json { render json: @browser_reader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /browser_readers/1
  # DELETE /browser_readers/1.json
  def destroy
    @browser_reader.destroy
    respond_to do |format|
      format.html { redirect_to browser_readers_url, notice: 'Browser reader was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_browser_reader
      @browser_reader = BrowserReader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def browser_reader_params
      params.require(:browser_reader).permit(:title, :description, :link, :version)
    end
end
