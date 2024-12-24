class WeaponsController < ApplicationController

  # GET /weapons
  def index
    weapons = Weapon.all
    render json: weapons
  end

  # GET /weapons/:id
  def show
    render json: @weapon
  end

  # POST /weapons
  def create
    weapon = Weapon.new(weapon_params)
    if weapon.save
      render json: weapon, status: :created
    else
      render json: weapon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weapons/:id
  def update
    if @weapon.update(weapon_params)
      render json: @weapon
    else
      render json: @weapon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weapons/:id
  def destroy
    @weapon.destroy
    head :no_content
  end

  private

  def weapon_params
    params.require(:weapon).permit(:name, :power_score, :fighter_id)
  end
end
