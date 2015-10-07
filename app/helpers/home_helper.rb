module HomeHelper

  def sign_up_link
    if I18n.locale == :en
      'https://railsgirlssb.wufoo.com/forms/apply-for-railsgirls-saarbracken-7th-november-2015/'
    else
      'https://railsgirlssb.wufoo.com/forms/anmeldung-railsgirls-saarbracken-7-november-2015/'
    end
  end

  # options:
  #   - small: boolean; if normal size or small for small screens
  def information_sign_up_button(options = {})
    classes = 'button radius'
    classes +=  ' small' if options[:small].present?

    link_to t('home.index.information.sign_up.button'), sign_up_link, target: '_blank', class: classes
  end

  # options:
  #   - small: boolean; if normal size or small for small screens
  def be_sponsor_button(options = {})
    classes = 'button radius'
    classes +=  ' small' if options[:small].present?

    mail_to 'railsgirlssb@gmail.com', t('home.index.sponsors.contact.button'), subject: t('home.index.sponsors.contact.subject'), encode: 'javscript', class: classes
  end

  # options:
  #   - small: boolean; if normal size or small for small screens
  def sign_up_button(options = {})
    classes = 'button radius'
    classes +=  ' small' if options[:small].present?

    link_to t('home.index.sign_up'), sign_up_link, target: '_blank', class: classes
  end

end
