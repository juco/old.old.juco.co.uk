module ApplicationHelper
	def full_title(title)
		base_title = "Julian Cohen"
		if !title.empty?
			base_title = base_title + " - #{title}"
		end
		base_title
	end
end