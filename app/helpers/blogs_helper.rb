module BlogsHelper
	def markup(text)
		require 'github/markup'
		GitHub::Markup.render('README.md', text)
	end
end
