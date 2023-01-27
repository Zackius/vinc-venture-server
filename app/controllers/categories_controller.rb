class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show ]

  # GET /categories
  def index
    @category = Category.all

    render json: @category, status: :ok
  end

  # GET /categories/1
  def show
@category = find_category
render json: @category, status: :ok
  end
  #POST/categories
  def create
    @category = Category.create!(category_params)
   render json: @category,  status: :created
  end

  # PATCH/PUT /categories/1
  def update
    @category= find_category.update!(category_params)
    render json: @category, status: :accepted
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end
    def find_category
Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :image)
    end
end
