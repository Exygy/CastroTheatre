class MoviesController < ApplicationController
	before_filter :set_movie, only: :show

	def index
		@movies = Movie.all
	end

	def show
	end	

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to @movie, notice: 'Movie was successfully created.'
		else
			render action: 'new'        
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
	    def set_movie
	      @movie = Movie.find(params[:id])
	    end
		# Never trust parameters from the scary internet, only allow the white list through.
		def movie_params
			params.require(:movie).permit(:title, :description, :duration)
		end
end