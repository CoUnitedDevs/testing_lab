class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_paper_trail_whodunnit
  # layout Proc.new { |controller| controller.devise_controller? && !user_signed_in? ? 'devise' : 'application' }


  def after_sign_in_path_for(resource)
      new_patient_path
  end
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  private
  def user_not_authorized
    flash[:notice] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
