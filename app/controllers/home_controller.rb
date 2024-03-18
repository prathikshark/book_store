class HomeController < ApplicationController
  def index
    flash[:take]="Logged in Successfully"
        @show_logout_cart=true;
       @show_navbar = true
  end
end
