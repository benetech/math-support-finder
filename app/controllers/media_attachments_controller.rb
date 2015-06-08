class MediaAttachmentsController < ApplicationController
  before_action :set_media_attachment, only: [:show, :edit, :update, :destroy]

  # GET /media_attachments
  # GET /media_attachments.json
  def index
    @media_attachments = MediaAttachment.all
  end

  # GET /media_attachments/1
  # GET /media_attachments/1.json
  def show
  end

  # GET /media_attachments/new
  def new
    @media_attachment = MediaAttachment.new
  end

  # GET /media_attachments/1/edit
  def edit
  end

  # POST /media_attachments
  # POST /media_attachments.json
  def create
    @media_attachment = MediaAttachment.new(media_attachment_params)

    respond_to do |format|
      if @media_attachment.save
        format.html { redirect_to @media_attachment, notice: 'Media attachment was successfully created.' }
        format.json { render :show, status: :created, location: @media_attachment }
      else
        format.html { render :new }
        format.json { render json: @media_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_attachments/1
  # PATCH/PUT /media_attachments/1.json
  def update
    respond_to do |format|
      if @media_attachment.update(media_attachment_params)
        format.html { redirect_to @media_attachment, notice: 'Media attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @media_attachment }
      else
        format.html { render :edit }
        format.json { render json: @media_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_attachments/1
  # DELETE /media_attachments/1.json
  def destroy
    @media_attachment.destroy
    respond_to do |format|
      format.html { redirect_to media_attachments_url, notice: 'Media attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_attachment
      @media_attachment = MediaAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_attachment_params
      params.require(:media_attachment).permit(:title, :type, :link, :matrix_entry_id)
    end
end
