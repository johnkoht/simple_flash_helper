module FlashHelper

  # Flash Helper
  # ------------------------------------------------------------------------------------------------------

  # a robust method to display flash messages
  def flash_helper
    # html from each message
    html = ''
    flash.each do |key, msg|
      html = html + content_tag(:div, raw(msg + close_alert_btn), :class => "alert alert-#{key}")
    end

    return (content_tag :div, html.html_safe, id: "flash_helper").html_safe
  end

  # Generate the html for a close button on alerts and other modules
  def close_alert_btn type="alert"
    content_tag :button, "&times;".html_safe, :class => "close", :'data-dismiss' => type
  end

end