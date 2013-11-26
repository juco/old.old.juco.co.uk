module BlogsHelper
	def markup(text)
		require 'github/markup'
		# GitHub::Markup.render('README.md', text)
		redcarpet_options = { :hard_wrap => true, :filter_html => true, 
			:autolink => true, :no_intraemphasis => true,
			:fenced_code => true, :gh_blockcode => true
		}
		r = Redcarpet::Markdown.new(Redcarpet::Render::HTML, redcarpet_options)
	end
end
