class WorkflowStatusesController < ApplicationController
  before_action :set_workflow_status, only: [:show, :edit, :update, :destroy]
  before_filter :admin, except: [:show, :index]

  respond_to :html, :json

  # GET /workflow_statuses
  def index
    @workflow_statuses = WorkflowStatus.all
  end

  # GET /workflow_statuses/1
  def show
  end

  # GET /workflow_statuses/new
  def new
    @workflow_status = WorkflowStatus.new
  end

  # GET /workflow_statuses/1/edit
  def edit
  end

  # POST /workflow_statuses
  def create
    @workflow_status = WorkflowStatus.new(workflow_status_params)
    flash[:notice] = "#{@workflow_status} was successfully created." if @workflow_status.save
    respond_with @workflow_status
  end

  # PATCH/PUT /workflow_statuses/1
  def update
    flash[:notice] = "#{@workflow_status} was successfully updated." if @workflow_status.update(workflow_status_params)
    respond_with @workflow_status
  end

  # DELETE /workflow_statuses/1
  def destroy
    @workflow_status.destroy
    flash[:notice] = 'Workflow status was successfully destroyed.'
    respond_with @workflow_status
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workflow_status
      @workflow_status = WorkflowStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workflow_status_params
      params.require(:workflow_status).permit(:title)
    end
end
