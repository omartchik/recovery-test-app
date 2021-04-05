class RestaurantsController < ApplicationController
  # EXECUTION AVANT
  before_action :set_restaurant, only: [:show, :edit, :destroy, :update]
  def set_restaurant
  @restaurant = Restaurant.find(params[:id])
  end

# LISTE DES RESTAURANTS
  def index
  @restaurants = Restaurant.all
end
# DETAILS DU RESTAURANT
def show
end

# EDITER UN RESTAURANT
def edit
end
# MISE A JOUR
def update
  @restaurant.update(restaurant_params)
  redirect_to(restaurants_path)
end
# NOUVEAU RESTAURANT
def new
  @restaurant = Restaurant.new
end
# CREATION DU RESTAURANT
def create
  @restaurant = Restaurant.create(restaurant_params)
  @restaurant.save
  redirect_to(restaurants_path)
end
# SUPPRIMER UN RESTAURANT
def destroy
  @restaurant.destroy
  redirect_to(restaurants_path)
end


# PRIVATE
private
def restaurant_params
  params.require(:restaurant).permit(:name, :rating, :address)
end


end
