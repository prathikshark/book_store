class AdminController < ApplicationController
  def new
    @admin=true
    @book=Book.new
  end
     
    def create
         @book=Book.new(books_params)
          puts "==============================="
        
      if @book.save
        
        
          redirect_to show_path, notice:"book created"
      else
          puts @book.errors.full_messages
          render :new
      end
    end
  
    def show
         @books=Book.all
         @books=Book.all.paginate(page: params[:page])
  
    end
  
  def delete
   @id=params[:id]
   @book=Book.find_by(id:@id)
   @book.destroy
   redirect_to show_path, notice:"book deleted"
  end
  
   private
      def books_params
      params.require(:book).permit(:name,:author,:description,:quantity,:price,:bookstore_id,:img )
      end
  
  
  end