class BestofController < ApplicationController
	def index
		@pizzas = Pizza.all
    @hash = Gmaps4rails.build_markers(@pizzas) do |pizza, marker|
      marker.lat pizza.latitude
      marker.lng pizza.longitude
      marker.title pizza.title
    end
	end

	def show
	end
end
