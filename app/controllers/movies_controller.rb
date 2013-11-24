class MoviesController < ApplicationController
  before_filter :set_movie, only: [:show, :edit, :update, :destroy]

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

  def edit
    @selection_rooms = Room.limit(3)
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_url
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id]) 
    end

    def movie_params
      params.require(:movie).permit(:title, :description, :duration, :room_ids => [])
    end



end
