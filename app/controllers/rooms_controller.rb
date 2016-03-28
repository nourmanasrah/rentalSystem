class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @rooms = current_user.rooms
  end

  def show
    @photos = @room.photos
  end

  def new
    @room = current_user.rooms.build
  end

  def create
    @room = current_user.rooms.build(room_params)

    if @room.save

      if params[:images] 
        params[:images].each do |image|
          @room.photos.create(image: image)
        end
      end

      @photos = @room.photos
      redirect_to edit_room_path(@room), notice: "Saved Successfully "
    else
      render :new
    end
  end

  def edit
    if current_user.id == @room.user.id
      @photos = @room.photos
    else
      redirect_to root_path, notice: "You don't have permission."
    end
  end

  def update
    if @room.update(room_params)

      if params[:images] 
        params[:images].each do |image|
          @room.photos.create(image: image)
        end
      end

      redirect_to edit_room_path(@room), notice: "The Room has been Updated"
    else
      render :edit
    end
  end

  private
    def set_room
      @room = Room.find(params[:id]) 
    end

    def room_params
      params.require(:room).permit(:room_type, :accommodate, :num_bedroom, :num_bed, :bldg_number, :num_bathroom, :list_name, :summary, :country, :city, :street_address,:nightly_price, :weekly_price, :monthly_price, :service_fee, :cleaing_fee, :security_deposit, :basic_fund, :is_restaurant, :is_store, :is_mall, :is_school, :is_gym, :is_park, :is_gas_station, :is_daycare, :is_collage, :is_hypermarket, :is_transportation, :is_hospital, :is_health_center, :is_indoor_fireplace, :is_doorman, :is_breakfast, :is_coffeeshop, :is_dryer, :is_washer, :is_family_friens, :is_home_gym, :is_hot_tub, :is_hangers, :is_hair_dryer, :is_iron, :is_essentials, :is_suitable_for_events, :is_internet, :is_tv, :is_hour_check_in, :is_pool, :is_pets_allowed, :is_wheelchair_accessible, :is_shampoo, :is_heating, :is_smoking_allowed, :is_air_conditioning, :is_elevator, :is_fan, :property_type, :is_kitchen, :home_rules, :cancellation,:images)
    end
end