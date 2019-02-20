class FlatsController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat = @flat.udate(flat_params)

    redirect_to flat_path
  end

  def destroy
    @flat.destroy

    redirect_to flat_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :adress, :description, :price_per_night, :number_of_guests)
  end

  def set_article
    @flat = Flat.find(params[:id])
  end
end
