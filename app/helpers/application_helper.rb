module ApplicationHelper

  def flash_msgs(key, value)
    if key == 'notice'
      return content_tag('span', value, class: 'alert alert-success text-center text-bold', style: 'width: fit-content')
    elsif key == 'alert'
      return content_tag('span', value, class: 'alert alert-danger text-center text-bold', style: 'width: fit-content')
    end
  end
end
