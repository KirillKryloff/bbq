class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  # Хелпер будет доступен во всех вьюхах
  helper_method :current_user_can_edit?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:password, :password_confirmation, :current_password]
    )
  end

   def current_user_can_edit?(model)
    # Если у модели есть юзер и он залогиненный, пробуем у модели взять .event и
    # если он есть, проверяем его юзера на равенство current_user.
    user_signed_in? && ( model.user == current_user || (model.try(:event).present? && model.event.user == current_user))
  end

  # def re_subscribe
  #   Subscription.exists?(user_name: @user)
  # end

end
