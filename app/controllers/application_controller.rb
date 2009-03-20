# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery
  before_filter :prepare_time_for_display

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  def prepare_time_for_display
    @current_time = Time.now
  end
end
