class BookController < ApplicationController
  def index
    #display all books
    @show_logout_cart=true;
    @books=Book.all
  end

 
end
