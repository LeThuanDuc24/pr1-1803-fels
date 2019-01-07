class Admin::ApplicationController < ActionController::Base
  layout "admin/application"
  include SessionsHelper
  before_action :verify_admin

  def verify_admin
    if !logged_in? || !current_user.admin
      redirect_to root_url
    end
  end
end
