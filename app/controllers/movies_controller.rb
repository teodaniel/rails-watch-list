class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @lists = List.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end
end
