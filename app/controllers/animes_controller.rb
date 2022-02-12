class AnimesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authenticate_admin!, only: [:destroy]
  before_action :set_anime, only: [:show, :edit, :update, :destroy]

  def index
    @animes = Anime.all.paginate(page: params[:page], per_page: 5)
  end

  def show
    if @anime.nil?
      redirect_to animes_path, notice: "Anime doesn't exist"
    end
  end

  def new
    @anime= current_user.animes.build
  end

  def create
    @anime = current_user.animes.build(anime_params)
    if @anime.save
      redirect_to @anime, notice: "#{@anime.title} was added successfully"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @anime.update(anime_params)
      redirect_to @anime, notice: "#{@anime.title} was updated successfully"
    else
      render 'edit'
    end
  end

  def destroy
    @anime.destroy
    redirect_to animes_path, notice: "#{@anime.title} has been deleted."
  end

  private
  
  def anime_params
    params.require(:anime).permit(:title, :description)
  end

  def set_anime
    @anime = Anime.find(params[:id])
  end
end
