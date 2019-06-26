module ApplicationHelper
  def notification_flash
    content_tag :script do
      content = ''
      flash.each do |key, value|
        content += "swal({ title: '#{value[0]}', text: '#{value[1]&.squish}', type: '#{key&.squish}', confirmButtonText: '#{value[2].presence || 'Ok'}' });"
      end
      content.html_safe
    end.html_safe
  end
end
