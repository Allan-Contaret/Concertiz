class ApplicationController < ActionController::Base
  before_action :require_login, except: [:index]
  private
def not_authenticated
  redirect_to login_path, alert: "Veuillez vous connectez"
end
end
