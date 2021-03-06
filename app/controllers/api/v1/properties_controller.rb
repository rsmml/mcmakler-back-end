class Api::V1::PropertiesController < ApplicationController
  include CurrentUserConcern
  before_action :set_property, only: %i[show update destroy]

  def index
    properties = Property.all.order(:id)
    render json: { properties: properties }
  end

  def my_properties
    user = session[:user_id]
    properties = Property.where(user_id: user)
    render json: { properties: properties, user_id: user }
  end

  def show
    render json: { property: @property }
  end

  def create
    property = Property.new(property_params)
    property.photo_id = rand(1..11)
    if property.save
      render json: { status: :created, property: property }
    else
      render json: { status: 401 }
    end
  end

  def update
    if @property.update(property_params)
      render json: { status: :ok, property: @property }
    else
      render json: { status: 401 }
    end
  end

  def destroy
    if @property.destroy
      render json: { status: :ok, property: "Property #{@property.id} deleted" }
    else
      render json: { stastus: 401 }
    end
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.permit(
      :address,
      :size,
      :construction_year,
      :rooms,
      :price,
      :property_type,
      :state_property,
      :user_id,
      :market,
      :photo
    )
  end
end
