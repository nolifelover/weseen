module ApplicationHelper

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

  def issue_status_render resource
    puts resource 
    label_name = ""
    case resource 
    when 0
      label_name = ""
    when 1
      label_name = "label-warning"
    when 2
      label_name = "label-info"
    when 10
      label_name = "label-success"
    end
    return "<span class='label  #{label_name}'>#{t('issue.status.status_'+resource.to_s)}</span>".html_safe
  end

end
