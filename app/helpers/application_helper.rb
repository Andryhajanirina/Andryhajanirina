module ApplicationHelper
	def current_class?(test_path)
		return 'active' if request.path == test_path
	end

	def user_info
		return User.last
	end

	# Personnalisé la description dans les metas pour chaqhe page
	def page_description(description)
		base_description = "Je m'appelle #{user_info.firstname} #{user_info.lastname}, 31 ans. Je suis passionné par le développement web, plutôt à l'aise avec le back-end."
		if description.empty?
			return base_description
		else
			return description
		end
	end
end
