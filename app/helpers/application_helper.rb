module ApplicationHelper
  def error_messages(object, css_class=nil)
    if object.errors.any?
      str = ""
      object.errors.messages.values.flatten.each do |ms|
        str += content_tag :li, class: css_class do
          ms
        end
      end
      raw(str)
    end
  end
end
