class Users::RegistrationsController < Devise::RegistrationsController
    before_action :authenticate_admin!, only: [:new, :create]
  
    private
  
    def authenticate_admin!
        unless current_user && current_user.admin?
        redirect_to root_path, alert: 'Você não tem permissão para acessar essa página.'
        end
    end
end