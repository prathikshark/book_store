class UserbooksController < ApplicationController

  def add_book_to_user

    @user_id=1
    @book_id=1
  @userbook=Userbook.create(user_id:@user_id,book_id:@book_id)

  if @userbook.save
    flash[:notice] = "Book added successfully."
  else
    flash[:alert] = "Failed to add book."
  end
  redirect_to book_path

  end
end
