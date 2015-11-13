class ArticlesController < ApplicationController
	before_filter :check_access, :only => [:new, :create, :edit, :destroy]

	def index
		@articles = Article.all
	end

	# def index
	# 	@article = Article.paginate(page: params[:page], :per_page => 5)
	# end

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

	def edit
		@article = Article.find(params[:id])
	end

	def destroy
		Article.find(params[:id]).destroy
		flash[:success] = "Review deleted"
		redirect_to new_article_path
	end

	protected
  def check_access
    redirect_to '/' and return unless current_user
  end

	private
		def article_params
			params.require(:article).permit(:author, :date, :headline, :text, :image_link)
		end
end
