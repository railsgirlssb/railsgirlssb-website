module HomeHelper
  def sign_up_url
    if I18n.locale == :en
      'https://railsgirlssb.wufoo.com/forms/apply-for-railsgirls-saarbracken-67-november-2015/'
    else
      'https://railsgirlssb.wufoo.com/forms/anmeldung-railsgirls-saarbracken-67-november-2015/'
    end
  end
end
