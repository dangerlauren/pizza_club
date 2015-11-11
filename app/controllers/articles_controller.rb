class ArticlesController < ApplicationController
	before_filter :check_access, :only => [:new, :create]

	def index
		@article = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end


	def new

	end

	def create
		@article = Article.new(article_params)

		@article.save
		redirect_to @article
	end

	protected
  def check_access
    redirect_to '/' and return unless current_user
  end

	private
		def article_params
			params.require(:article).permit(:author, :date, :headline, :text)
		end
end
