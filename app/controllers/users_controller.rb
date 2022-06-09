class UsersController < ApplicationController
  before_action :only => [:new, :edit, :create, :update, :destroy] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def index
    # @products = Product.all.paginate(:page=>params[:page],per_page:10)
    # render :index
  end

  def new
    # @product = Product.new
    # render :new
  end

  def create
    # @product = Product.new(product_params)
    # if @product.save
    #   flash[:notice] = "Product successfully added!"
    #   redirect_to products_path
    # else
    #   render :new   
    # end
  end

  def edit
    # @product = Product.find(params[:id])
    # render :edit
  end

  def show
    # @product = Product.find(params[:id])
    # @reviews = @product.reviews.all.paginate(:page=>params[:page],per_page:10)
    # render :show
  end
  
  def update
  #   @product = Product.find(params[:id])
  #   if @product.update(product_params)
  #     flash[:notice] = "Product successfully updated!"
  #     redirect_to products_path
  #   else
  #     render :edit
  #   end
  end

  def destroy
  #   @product = Product.find(params[:id])
  #   @product.destroy
  #   redirect_to products_path
  end

  def home
    # @products = Product.all
    # @three_most_recent = Product.three_most_recent
    # @usa_product = Product.usa_product
    # @most_reviewed = Product.most_reviewed
    # render :home
  end

  private
    def product_params
      # params.require(:user).permit(:name, :resource)
    end

  
end