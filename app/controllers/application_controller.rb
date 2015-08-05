class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  analytical 

  enable_authorization do |exception|
    redirect_to root_url, :alert => exception.message
  end unless :devise_controller?

  def prep_setup_search
    @platforms = Platform.all
    @browser_readers = BrowserReader.all
    @renderers = Renderer.all
    @assistive_technologies = AssistiveTechnology.all
    @file_formats= FileFormat.all
    @workflow_status= WorkflowStatus.all
    @affordances= Affordance.all
    @content_sources= ContentSource.all

    @q = Setup.ransack(params[:q])
    @setups = @q.result.page(params[:page])
  end

  protected
    def admin
      redirect_to(root_url) unless current_user and current_user.admin?
    end

    def users
      redirect_to(root_url) if current_user.nil?
    end
end
