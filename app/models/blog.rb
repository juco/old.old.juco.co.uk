class Blog < ActiveRecord::Base
  before_save :markdown_body

  private
  def markdown_body
    require 'redcarpet'
    renderer = PygmentizeHTML
    redcarpet = Redcarpet::Markdown.new(renderer, fenced_code_blocks: true)
    self.body = redcarpet.render self.body
  end

end

class PygmentizeHTML < Redcarpet::Render::HTML
  def block_code(code, language)
    require 'pygmentize'
    Pygmentize.process(code, language)
  end
end