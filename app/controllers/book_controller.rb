class BookController < ApplicationController
  def index
    #display all books
    @show_logout_cart=true;
    @books=Book.all.paginate(page: params[:page])

  end

 
end
