class HomeController < ApplicationController

  before_filter :apply_locale

  def index

  end

  def legal_info

  end


  private

  def apply_locale
    return if params[:lang].blank?

    params[:lang] = :de if ['de', 'en'].exclude?(params[:lang].to_s)
    # I18n.locale = params[:lang]
    # TODO: write locale in session for each user

    redirect_to root_path
  end

end
