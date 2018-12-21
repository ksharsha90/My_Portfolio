class ApplicationController < ActionController::Base
	include DeviseWhitelist
	include SetSource
	include CurrentUserConcern
	include DefaultPageContent

	before_action :copyright_generator

	def copyright_generator
    	GurujadaViewTool::Renderer.copyright 'Harsha', 'All rights reserved'
    end
end

