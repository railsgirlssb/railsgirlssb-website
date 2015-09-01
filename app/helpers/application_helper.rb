module ApplicationHelper

  def body_class
    [controller.controller_path.gsub('/', '-'), controller.action_name.gsub('_', '-')] * ' '
  end

  def language_link
    if I18n.locale == :en
      text = t('layout.navigation.german')
      language = :de
    else
      text = t('layout.navigation.english')
      language = :en
    end

    link_to content_tag(:i, '', class: 'fa fa-language fa-lg') + ' ' + text, root_path(lang: language)
  end

  def round_icon(icon_name, options = {})
    options[:size] ||= 'lg'

    content_tag(:span, class: 'fa-stack fa-' + options[:size]) do
      content_tag(:i, '', class: 'fa fa-circle fa-stack-2x') +
        content_tag(:i, '', class: 'fa fa-' + icon_name + ' fa-stack-1x')
    end.html_safe
  end

  def twitter_icon_link(handle, options = {})
    render_icon_link(handle, options.merge({ type: 'twitter' }))
  end

  def facebook_icon_link(handle, options = {})
    render_icon_link(handle, options.merge({ type: 'facebook' }))
  end

  def github_icon_link(handle, options = {})
    render_icon_link(handle, options.merge({ type: 'github' }))
  end

  def sign_up_link
    if I18n.locale == :en
      'https://railsgirlssb.wufoo.com/forms/apply-for-railsgirls-saarbracken-67-november-2015/'
    else
      'https://railsgirlssb.wufoo.com/forms/anmeldung-railsgirls-saarbracken-67-november-2015/'
    end
  end

  private

  def render_icon_link(handle, options = {})
    return if handle.blank?

    options[:type] = options[:type].to_s
    return if ['twitter', 'facebook', 'github'].exclude?(options[:type])

    link_to round_icon(options[:type], options),
            'https://' + options[:type] + '.com/' + handle.to_s,
            target: '_blank',
            class: 'icon-' + options[:type]
  end

end
