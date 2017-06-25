class GamesController < ApplicationController
  def index
    @games = Game.search(params[:term])
  end


    def show
         @games = Game.find(params[:id])
    end
    
    def new
        @games = Game.new
    end
  
  def create
    @games = Game.new(game_params)
    if @games.save
      flash[:notice] = "Successfully created game."
      redirect_to @games
    else
      render :action => 'edit'
    end
  end
    def edit
        @games = Game.find(params[:id])
    end
  
  def update
    @games = Game.find(params[:id])
    if @games.update_attributes(game_params)
      flash[:notice] = "Successfully updated game."
      redirect_to @games
    else
      render :action => 'edit'
    end
  end
  private
    def game_params
        params.require(:game).permit(:name, :category_id, :description, :genre, :price, :image, :term)
    end
    
end
