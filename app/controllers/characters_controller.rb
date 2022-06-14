class CharactersController < ApplicationController
  def index
  end

  def new
    @user = User.find(params[:user_id])
    @character = @user.characters.new
    render :new
  end

  def create
    @user = User.find(params[:user_id])
    @character = @user.characters.new(character_params)
    if @character.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @character = Character.find(params[:id])
    render :show
  end

  def edit
    @user = User.find(params[:user_id])
    @character = Character.find(params[:id])
    render :edit
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      redirect_to user_path(@character.user)
    else
      @user = User.find(params[:user_id])
      render :edit
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to user_path(@character.user)
  end

  private
    def character_params
      params.require(:character).permit(:war_name, :war_race, :war_class, :war_cost, :war_strength)
    end
end