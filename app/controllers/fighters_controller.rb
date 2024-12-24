class FightersController < ApplicationController

  # GET /fighters
  def index
    fighters = Fighter.all
    render json: fighters
  end

  # GET /fighters/:id
  def show
    render json: @fighter
  end

  # POST /fighters
  def create
    fighter = Fighter.new(fighter_params)
    if fighter.save
      render json: fighter, status: :created
    else
      render json: fighter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fighters/:id
  def update
    if @fighter.update(fighter_params)
      render json: @fighter
    else
      render json: @fighter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fighters/:id
  def destroy
    @fighter.destroy
    head :no_content
  end

  private

  def fighter_params
    params.require(:fighter).permit(:name, :life_score, :attack_score)
  end
end
