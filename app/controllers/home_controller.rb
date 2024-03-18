class HomeController < ApplicationController
  def index
    flash[:take]="Logged in Successfully"
    @show_navbar = true
  end
end
