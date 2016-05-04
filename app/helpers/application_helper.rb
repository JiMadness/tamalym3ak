module ApplicationHelper
  def make_title(page_name ='',base)
    if !page_name.empty?
      "#{page_name} | #{base}"
    else
      "#{base}"
    end
  end
end
