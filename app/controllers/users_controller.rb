class UsersController < ApplicationController
  def create
    user = User.new  name:'yunqi'
    if user.save
      render json:user
      # p 'save 成功了'
    else 
      render json:user.errors
      # p 'save 失败了'
    end
  end

  def show
   user = User.find_by_id params[:id]
   if user
    render json:user
   else
    head 404
    end
  end 
end
