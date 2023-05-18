class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:change_language]

  def index; end

  def change_language
    I18n.default_locale = params[:language]
    redirect_to request.referrer
  end
end
