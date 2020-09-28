#共通のコントローラー
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  #deviseのメソッドでログインしていないユーザーをログイン画面に促すことができる
  before_action :configure_permitted_parameters, if: :devise_controller?
  #deviseのコントローラーから呼び出された場合はconfigure_permitted_parametersが呼び出される

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
