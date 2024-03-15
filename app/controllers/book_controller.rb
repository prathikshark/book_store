class BookController < ApplicationController
  def index
    #display all books
    @books=Book.all
  end
end
