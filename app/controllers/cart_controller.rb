class CartController < ApplicationController
  def show
    @show_logout_cart=true;
    @user = current_user
    @books = @user.books
    @total=total;
  end

  def remove_from_cart
    book_id = params[:book_id].to_i
    cart_item = current_user.books.find_by(id: book_id)
    cart_item.destroy if cart_item
    redirect_to cart_path
  end

  def total
   tot=0;
  @books.each do |book|
    tot+=book.price
   end
   return tot
  end
end