class ProductsController < ApplicationController
  def index
    
  end

  def new
    
  end

  def create
    
  end

  def message_params
    params.require(:product).permit(:image).merge(user_id: current_user.id)
  end

end
