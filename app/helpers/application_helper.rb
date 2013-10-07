module ApplicationHelper

  def full_title(page_title)
    base_title = "Default Site"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def link_to_add_repo(name, f, association, values)
    fields = f.fields_for(association, values, child_index: values.name) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_repos", data: { id: values.name, fields: fields.gsub("\n", "")})
  end

end
