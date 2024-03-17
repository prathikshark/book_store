class UserbooksController < ApplicationController

  def add_book_to_user
    @user_id=current_user.id
    @book_id = params[:book_id]
   @book=Book.find_by(id:@book_id)
   
    if @book.quantity > 0 
      @userbook=Userbook.create(user_id:@user_id,book_id:@book_id) 
      if @userbook.save
     flash[:notice] = "Book added successfully."
     @book.update(quantity: @book.quantity-1)
      else
     flash[:alert] = "Failed to add book."
    end
  else
    flash[:alert] = "Book not available"
  end
  redirect_to book_path

  end
end
