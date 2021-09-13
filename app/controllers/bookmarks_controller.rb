class BookmarksController < ApplicationController
  def new
    # raise
    @bookmark = Bookmark.new
    # where the Fs my movie?
    @movie = Movie.find(params[:movie_id])
  end

  def create
  end

  def destroy
    Bookmark.destroy
  end
end
