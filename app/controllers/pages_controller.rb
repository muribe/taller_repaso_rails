class PagesController < ApplicationController
  def x
    @user = show_all_user
  end
  def save_user
    if params[:name].present? && params[:last_name].present? && params[:email].present? && params[:age].present?
        User.create(name: params[:name],last_name: params[:last_name],email: params[:email],age: params[:age]) 
        redirect_to :back 
    end
    
  end
  def show_all_user
    User.all
  end
end
