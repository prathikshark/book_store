class SessionController < ApplicationController
    def new
  @navbar=true;
    end

    def create
        user=User.find_by(email: params[:email])
          if user.present? && user.authenticate(params[:password])
              session[:user_id]=user.id   
              if user.isadmin?
                 redirect_to admin_path
              else
                 
                 redirect_to root_path , notice: 'logged in succesfully'
               end
          else
              flash.now[:alert]='invalid email or password'
              render :new
        end
    end
    
     def destroy
            session[:user_id]= nil
            redirect_to root_path ,notice: "logged out"
        end


    end