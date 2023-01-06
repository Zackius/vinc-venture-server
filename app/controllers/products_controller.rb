class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show ]
  before_action :set_categories

  # GET /products
  def index
    @product = Product.all

    render json: @product, status: :ok
  end

  # GET /products/1
  def show
@product = find_product
render json: @product, status: :ok
  end

  # POST /products
  def create
    @product = Product.create!(product_params)
   render json: @product,  status: :created
  end

  # PATCH/PUT /products/1
  def update
   @product = find_product.update!(product_params)
    render json: @product, status: :accepted
 
  end

  # DELETE /products/1
  def destroy
    @product = find_product()
    @product.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    #find a product 

    def find_product
Product.find(params[:id])
    end 

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name,  :description, :image, :price, :category_id)
    end

    def set_categories
@categories = Category.all.order(:name)
    end
end
