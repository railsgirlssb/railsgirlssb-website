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

    link_to t('home.index.information.sign_up.button'), "#", class: classes
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

    link_to t('home.index.sign_up'), "#", class: classes
  end

  def team_members
    [
      {
        image: 'team/corinna-wiesner.jpg',
        name: 'Corinna Wiesner',
        role: t('home.index.team.organizer_and_coach.female'),
        twitter: 'walkertowski',
        github: 'corinnawiesner'
      },
      {
        image: 'team/robert-gogolok.jpg',
        name: 'Robert Gogolok',
        role: t('home.index.team.organizer_and_coach.male'),
        twitter: 'gogolok',
        github: 'gogolok'
      },
      {
        image: 'team/andreas-steinel.jpg',
        name: 'Andreas Steinel',
        role: t('home.index.team.coach'),
        twitter: 'lnxbil',
        github: 'lnxbil'
      },
      {
        image: 'team/kerstin-reese.jpg',
        name: 'Kerstin Reese',
        role: t('home.index.team.coach'),
        twitter: 'kerstinreese',
        github: 'kerstinreese'
      },
      {
        image: 'team/marcel-stegmann.jpg',
        name: 'Marcel Stegmann',
        role: t('home.index.team.coach'),
        twitter: 'dauerschreiber',
        github: 'mstegmann-avarteq'
      },
      {
        image: 'team/monika-dondorf.jpg',
        name: 'Monika Dondorf',
        role: t('home.index.team.coach'),
        twitter: 'santa_nika'
      },
      {
        image: 'team/sven-schmidt.jpg',
        name: 'Sven Schmidt',
        role: t('home.index.team.coach'),
        twitter: 'AVTQ_Sven',
        github: 'schmidtsv'
      },
      {
        image: 'team/markus-schwed.jpg',
        name: 'Markus Schwed',
        role: t('home.index.team.coach'),
        twitter: 'markusschwed',
        github: 'sweed'
      }
    ]
  end

end
