json.array!(@blogs) do |blog|
  json.extract! blog, :title, :body, :author
  json.url blog_url(blog, format: :json)
end