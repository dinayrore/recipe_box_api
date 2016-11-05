#
class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    @recipe = Recipe.find params[:id]
    render json: @recipe
  end

  def create
    @recipe = Recipe.new recipe_params
    if @recipe.save
      render :show
    else
      render_error @recipe.errors.full_messages
    end
  end

  def update
    @recipe = Recipe.find params[:id]
    if @recipe.update recipe_params
      render :show
    else
      render_error @recipe.errors.full_messages
    end
  end

  def destroy
    User.find(params[:id]).destroy
    render json: {}, status: :ok
  end

  private

  def recipe_params
    params.require(:recipe).permit(:user_id, :name, :ingredients, :image,
                                   :yield, :instructions)
  end
end
