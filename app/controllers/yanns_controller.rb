class YannsController < ApplicationController
  before_action :set_yann, only: %i[ show update destroy ]

  # GET /yanns
  def index
    @yanns = Yann.all

    # render json: @yanns.include(:members), only: [:name]
    render json: @yanns
  end

  # GET /yanns/1
  def show
    render json: @yann
  end

  # POST /yanns
  def create
    @yann = Yann.new(yann_params)

    if @yann.save
      render json: @yann, status: :created, location: @yann
    else
      render json: @yann.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /yanns/1
  def update
    if @yann.update(yann_params)
      render json: @yann
    else
      render json: @yann.errors, status: :unprocessable_entity
    end
  end

  # DELETE /yanns/1
  def destroy
    @yann.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yann
      @yann = Yann.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yann_params
      params.require(:yann).permit(:name)
    end
end
