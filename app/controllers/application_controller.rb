class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  analytical 

  enable_authorization do |exception|
    redirect_to root_url, :alert => exception.message
  end unless :devise_controller?

  def search_params
    params[:q]
  end

  def clear_search_index
    if params[:search_cancel]
      params.delete(:search_cancel)
      if(!search_params.nil?)
        search_params.each do |key, param|
          search_params[key] = nil
        end
      end
    end
  end

  def prep_setup_search

    @platforms = Platform.all
    @browser_readers = BrowserReader.all
    @renderers = Renderer.all
    @assistive_technologies = AssistiveTechnology.all
    @file_formats= FileFormat.all
    @workflow_status= WorkflowStatus.all
    @outputs= Output.all

    @q = Setup.ransack(params[:q])

    nested = ['platform_version_version desc',  'assistive_technology_version desc', 'browser_reader_version desc']
    if @q.sorts.empty?
      @q.sorts = ['platform_version_platform_title asc']  + nested
    else
      sorts = [params[:q][:s]]
      @q.sorts = sorts + nested
    end

    if !current_user
      @workflow_status= WorkflowStatus.where(id: [2, 3])
      @setups = @q.result.where(workflow_status_id: [2,3])
    else
      @workflow_status= WorkflowStatus.all
      @setups = @q.result
    end

    @setups = @setups.page(params[:page])

    @cache_key = [@q, @setups , @platforms , @browser_readers , @renderers , @assistive_technologies , @file_formats , @workflow_status , @outputs].to_set.hash
  end

  protected
    def admin
      redirect_to(root_url) unless current_user and current_user.admin?
    end

    def users
      redirect_to(root_url) if current_user.nil?
    end
end
