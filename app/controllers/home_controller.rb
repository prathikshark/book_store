class HomeController < ApplicationController
  def index
    flash[:take]="Logged in Successfully"
    flash[:alert]="Invalid Email or Password"
  end
end
