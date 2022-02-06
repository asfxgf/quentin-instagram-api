class RestaurantsController < ApplicationController
  include Pundit
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_restaurant, only: [:show, :update, :destroy]

  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  def index
    @restaurants = policy_scope(Restaurant)
  end

  def show
    if current_user.id != @restaurant.user_id then
      redirect_to('')
    end
  end

  def update
    if @restaurant.update(restaurant_params)
      render :show
    else
      render_errors
    end
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user

    authorize @restaurant

    if @restaurant.save
      render :show, status: :created
    else
      render_errors
    end
  end

  def destroy
    @restaurant.destroy

    head :no_content
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  def render_errors
    render html: { errors: @restaurant.errors.full_messages },
           status: :unprocessable_entity
  end
end