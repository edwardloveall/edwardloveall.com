module ApplicationHelper
  def to_markdown(text)
    md_renderer = Redcarpet::Render::HTML.new(:hard_wrap => true)
    md_options = [:autolink => true]
    markdown = Redcarpet::Markdown.new(md_renderer, *md_options)
    
    markdown.render(text).html_safe
  end
end
