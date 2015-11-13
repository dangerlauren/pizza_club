class AdminsController < ApplicationController
	def index
		@articles = Article.all
	end
end
