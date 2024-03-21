class AdminController < ApplicationController

    def new
        @book=Book.new
    end

  def create
   @admin=true
    @book=Book.new(params[:name])
    if @book.save
        redirect_to admin_path, notice:"book created"
    else
        render :new
    end
  end
  def show
  end




end