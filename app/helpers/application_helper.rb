module ApplicationHelper
	
	def title
		base_title = "News"
		if @title.nil?
			base_title
		else
			"#{@title}"
  end
 end
end
