class ApplicationController < ActionController::API
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end
  before_action :authenticate_user!
end
