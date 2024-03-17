class HomeController < ApplicationController
  def index
    flash[:take]="Logged in Successfully"
  end
end
