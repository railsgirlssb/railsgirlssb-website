class HomeController < ApplicationController

  before_filter :apply_locale

  def index

  end

  def legal_info

  end


  private

  def apply_locale
    old_locale = I18n.locale

    I18n.locale = params[:lang] || session[:lang] || I18n.default_locale
    session[:lang] = I18n.locale

    if I18n.locale != old_locale
      redirect_to root_path
    end
  end

end
