module ApplicationHelper
	def full_title(page_title ='')
		base_title="Ruby ON Rails Tutorial Sample App"
		if  page_title.empty?
			base_title
		else
			page_title + " | " +base_title
		end
	end


end
