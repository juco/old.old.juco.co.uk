class Blog
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :body, type: String
  field :body_rendered, type: String
  field :user_id, type: Integer
  field :date_created, type: DateTime

  belongs_to :user

  validates :title, length: { minimum: 3 }
  validates :body, presence: true

  before_save :markdown_body
  before_create :timestamps

  private
  def markdown_body
    require 'redcarpet'
    renderer = PygmentizeHTML
    redcarpet = Redcarpet::Markdown.new(renderer, fenced_code_blocks: true)
    self.body_rendered = redcarpet.render self.body
  end

  def timestamps
    self.date_created = DateTime.now
  end

end

class PygmentizeHTML < Redcarpet::Render::HTML
  def block_code(code, language)
    require 'pygmentize'
    Pygmentize.process(code, language)
  end
end