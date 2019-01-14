class SmoothiesController < ApplicationController
before_action :set_smoothie, only: [:show, :edit, :update, :destroy]

  def index
    @smoothies = Smoothie.all
  end

  def show

  end

  def new
    @smoothie = Smoothie.new
  end

  def create
    @smoothie = Smoothie.create(smoothie_params)
    redirect_to @smoothie
  end

  def edit

  end

  def update
    Smoothie.update(smoothie_params)
    redirect_to @smoothie
  end

  def destroy
    Smoothie.destroy
    redirect_to smoothies_path(smoothies)
  end

  def set_smoothie
    @smoothie = Smoothie.find(params[:id])
  end

  private

  def smoothie_params
    params.require(:smoothie).permit(:name)
  end

end
