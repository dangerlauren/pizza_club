class WelcomeController < ApplicationController
  def index
  	@articles = Article.all

  	@pizzas = Pizza.all
    @hash = Gmaps4rails.build_markers(@pizzas) do |pizza, marker|
      marker.lat pizza.latitude
      marker.lng pizza.longitude
      marker.title pizza.title
    end
  end

  def show
		@article = Article.find(params[:id])
	end
end
