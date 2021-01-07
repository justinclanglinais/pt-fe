class BeltsController < ApplicationController
  before_action :set_belt, only: [:show, :update, :destroy]

  # GET /belts
  def index
    @belts = Belt.all

    render json: @belts, include: {
      :student => {
        :only => [:id, :name]
      }
    },
    except: [:student_id, :created_at, :updated_at]
  end

  # GET /belts/1
  def show
    render json: @belt
  end

  # POST /belts
  def create
    @belt = Belt.new(belt_params)

    if @belt.save
      render json: @belt, status: :created, location: @belt
    else
      render json: @belt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /belts/1
  def update
    if @belt.update(belt_params)
      render json: @belt
    else
      render json: @belt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /belts/1
  def destroy
    @belt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_belt
      @belt = Belt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def belt_params
      params.require(:belt).permit(:rank, :student_id)
    end
end
