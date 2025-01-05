class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :set_locale 
  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end
  

  def set_locale
    I18n.locale = 'es'
  end
  before_action :authenticate_user!
  allow_browser versions: :modern
end
