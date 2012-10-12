module ApplicationHelper
  def title(page_title, show_title = true)
    @show_title = show_title
    content_for(:title) { page_title.to_s }
  end

  def markdown(text)
    markdown = Redcarpet::Markdown.new(HtmlPygmentize, fenced_code_blocks: true)
    markdown.render(text).html_safe
  end

  def show_title?
    @show_title
  end
end
