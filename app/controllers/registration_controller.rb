class RegistrationController < ApplicationController

    def new
        @user=User.new  #instance variable :will be visible in view 
    end

    def create
    @user = User.new(user_params)
        if @user.save
            PostMailer.post_created.deliver_now
            puts "========================================SENT"
            session[:user_id]=@user.id
            redirect_to root_path, notice: "Successfully created account!!"
        else
            flash[:alert] = "DAMNNNN!!!"
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:name,:address,:phone,:email,:password,:password_confirmation)
    end
end