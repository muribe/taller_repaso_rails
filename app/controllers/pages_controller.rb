class PagesController < ApplicationController
  def x
   
  end
  def landing
      render layout: "layout2"
  end
  def save_user
    if params[:name].present? && params[:last_name].present? && params[:email].present? && params[:age].present?
        @user=User.new(name: params[:name],last_name: params[:last_name],email: params[:email],age: params[:age]) 
        @user.save
        redirect_back(fallback_location: root_path, notice:"Usuario creado correctamente" ) 
    else    
        redirect_back(fallback_location: root_path, alert: "Complete todos los campos")
    end

  end
  def show_all_user
    @user=User.all
  end
end
