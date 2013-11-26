class Blog
  include Mongoid::Document

  field :title, type: String
  field :body, type: String
  field :body_rendered, type: String
  field :author, type: Integer

  before_save :markdown_body

  private
  def markdown_body
    require 'redcarpet'
    renderer = PygmentizeHTML
    redcarpet = Redcarpet::Markdown.new(renderer, fenced_code_blocks: true)
    self.body_rendered = redcarpet.render self.body
  end

end

class PygmentizeHTML < Redcarpet::Render::HTML
  def block_code(code, language)
    require 'pygmentize'
    Pygmentize.process(code, language)
  end
end