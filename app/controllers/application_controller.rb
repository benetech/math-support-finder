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
    @setups = @q.result(distinct: true).page(params[:page])
  end

  protected
    def admin
      redirect_to(root_url) unless current_user and current_user.admin?
    end

    def users
      redirect_to(root_url) if current_user.nil?
    end
end
