module SimpleFlashHelper

  # Flash Helper
  # ------------------------------------------------------------------------------------------------------

  # a robust method to display flash messages
  def flash_helper keys=[:notice, :alert, :error]
    # allow keys to be a symbol or an array of symbols
    keys = [keys] unless keys.kind_of? Array

    # Alias classes, mostly so that a notice can be a success, alert a notice, etc.
    classes = {
      notice: "alert-success",
      alert: "alert-notice",
      error: "alert-error"
    }

    # html from each message
    html = ''
    flash.each do |key, msg|
      css_class = classes[key] || key
      html = html + content_tag(:div, raw(msg + close_alert_btn), :class => "alert #{css_class}") if keys.index key
    end

    return (content_tag :div, html, id: "flash_helper").html_safe
  end

end