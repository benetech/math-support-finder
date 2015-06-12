class ApplicationController < ActionController::Base
  # home page
  def index
	# @affordances = Affordance.all
	# @statuses = Status.all
	# @content_formats = ContentFormat.all
	# @platforms = Platform.all
	# @renderers = Renderer.all
	# @readers = BrowserReader.all
	@assistive_technologies = AssistiveTechnology.all
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
