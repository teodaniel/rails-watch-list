class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @list = List.all
  end

  def show
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    # got ma params
    # wanna create inst with info from params
    # save instance (persist to db)
    @list = List.create(strong_params)
    if @list.valid?
      redirect_to movies_path
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to movies_path
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def strong_params
    params.require(:list).permit(:name, :photo)
  end
end
