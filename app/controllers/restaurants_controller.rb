class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]


  def index
    # listar todos os restaurantes
    @restaurants = Restaurant.all
  end

  def show
    # mostrar detalhes de um restaurante específico
  end

  def new
    # mostrar o formulário para criar um novo restaurante
    @restaurant = Restaurant.new
  end

  def create
    # crio um novo restaurante no meu BD com as infos que o usuário inputou
    new_restaurant = Restaurant.new(restaurant_params)

    new_restaurant.save

    redirect_to restaurant_path(new_restaurant.id)
  end

  def edit
  end

  def update
    # atualizo o meu restaurante com as infos que o usuário inputou

    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant.id)
  end

  def destroy

    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    # pegue a hash restaurant dentro de params e só permita os campos
    # name, address e rating (qualquer outro não passará)
    params.require(:restaurant).permit(:name, :address, :rating)
  end

end
