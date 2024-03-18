class CartController < ApplicationController
  def show
    @show_logout_cart=true;
    @user = current_user
    @books = @user.books
  end

end