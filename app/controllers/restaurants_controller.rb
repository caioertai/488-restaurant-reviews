class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:chef, :show, :edit, :update, :destroy]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/top
  def top
    # SELECT * FROM restaurants WHERE stars >= 4
    @restaurants = Restaurant.where(stars: 4..5)
  end

  # GET /restaurants/:id/chef
  def chef
  end

  # GET /restaurants/1
  # GET /restaurants/:id
  def show
    # @restaurant = Restaurant.find(params[:id])

    # render :show
    # render "restaurants/show"
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
    # @restaurant = Restaurant.find(params[:id]) <---- set_restaurant
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    # @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :stars)
    end
end
