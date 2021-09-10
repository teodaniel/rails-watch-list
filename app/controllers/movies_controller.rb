class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end
end
