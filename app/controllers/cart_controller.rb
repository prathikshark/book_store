class CartController < ApplicationController
  def show
    @user = current_user
    @books = @user.books
  end
end