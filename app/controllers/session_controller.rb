class SessionController < ApplicationController
    def new
  @navbar=true;
    end

    def create
    user=User.find_by(email: params[:email])
      if user.present? 
          session[:user_id]=user.id
          redirect_to root_path , notice: 'logged in succesfully'
      else
          flash[:alert]='invalid email or password'
          render :new
      end
   
end
    
     def destroy
            session[:user_id]= nil
            redirect_to root_path ,notice: "logged out"
        end


    end