class EntryDecorator < SimpleDelegator
  def published_date
    "#{model.day} #{model.month}, #{model.year}"
  end

  def body_markdown
    markdown_formatter.render(model.body).html_safe
  end

  private

  def model
    self
  end

  def markdown_formatter
    Redcarpet::Markdown.new(Redcarpet::Render::HTML,
      :autolink => true, :space_after_headers => true, :no_intra_emphasis => true)
  end
end
